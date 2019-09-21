library react_testing_library_dart.util;

import 'dart:html';
import 'dart:js';
import 'dart:js_util' as js_util;

import './interop.dart';

const contentDivId = 'content';

Future<Null> enableTestMode() async {
  if (js_util.getProperty(window, 'React') == null) {
    var reactJsScript = ScriptElement();
    reactJsScript.src =
        'packages/react_testing_library/js/react.development.js';
    document.head.append(reactJsScript);
  }
  await Future.delayed(Duration(seconds: 1));
  if (js_util.getProperty(window, 'ReactDOM') == null) {
    var reactDomJsScript = ScriptElement();
    reactDomJsScript.src =
        'packages/react_testing_library/js/react-dom.development.js';
    document.head.append(reactDomJsScript);
  }
  await Future.delayed(Duration(seconds: 1));
  if (js_util.getProperty(window, 'ReactTestUtils') == null) {
    var reactDomTestUtilsJsScript = ScriptElement();
    reactDomTestUtilsJsScript.src =
        'packages/react_testing_library/js/react-dom-test-utils.development.js';
    document.head.append(reactDomTestUtilsJsScript);
  }
  await Future.delayed(Duration(seconds: 1));
  if (js_util.getProperty(window, 'TestingLibraryReact') == null) {
    var reactTestingLibraryCompatJsScript = ScriptElement();
    reactTestingLibraryCompatJsScript.innerHtml = '''
      window.ReactDom = ReactDOM;
      window.testUtils = ReactTestUtils;
    ''';
    document.head.append(reactTestingLibraryCompatJsScript);
    await Future.delayed(Duration(seconds: 1));
    var reactTestingLibraryJsScript = ScriptElement();
    reactTestingLibraryJsScript.src =
        'packages/react_testing_library/js/testing-library-react.umd.js';
    document.head.append(reactTestingLibraryJsScript);
  }
  await Future.delayed(Duration(seconds: 1));
}

convertToJsRegExp(String text) =>
    js_util.callConstructor(js_util.getProperty(window, 'RegExp'), [text]);

ReactTestingLibraryInterface RTL = ReactTestingLibrary();

class ReactTestingLibrary implements ReactTestingLibraryInterface {
  @override
  RenderResultWrapper render(ui, [options]) {
    if (options != null) {
      return RenderResultWrapper(TestingLibraryReact.render(ui, options));
    }
    return RenderResultWrapper(TestingLibraryReact.render(ui));
  }

  @override
  noSuchMethod(Invocation i) {
    String memberNameString = i.memberName
        .toString()
        .replaceAll('Symbol("', '')
        .replaceAll('")', '')
        .replaceAll('=', '')
        .replaceAll('_', '-');
    if (i.isMethod && i.isGetter) {
      return context['TestingLibraryReact']
          .callMethod(memberNameString, [...i.positionalArguments]);
    }
    return i;
  }
}

class RenderResultWrapper implements RenderResult {
  RenderResult theRender;
  RenderResultWrapper(this.theRender);

  @override
  Element getByText(dynamic text) {
    if (text is RegExp) {
      return theRender.getByText(convertToJsRegExp(text.pattern));
    }
    return theRender.getByText(text);
  }

  @override
  RenderResultWrapper rerender(ui) {
    return RenderResultWrapper(theRender.rerender(ui));
  }

  @override
  noSuchMethod(Invocation i) {
    String memberNameString = i.memberName
        .toString()
        .replaceAll('Symbol("', '')
        .replaceAll('")', '')
        .replaceAll('=', '')
        .replaceAll('_', '-');
    if (i.isMethod) {
      return js_util
          .callMethod(theRender, memberNameString, [...i.positionalArguments]);
    }
  }
}

abstract class ReactTestingLibraryInterface {
  act(callback);
  bindElementToQueries(element, queries);
  buildQueries(queryAllBy, getMultipleError, getMissingError);

  /// Unmounts React trees that were mounted with render.
  ///
  /// Example:
  /// ```
  ///   tearDown((){
  ///     cleanup();
  ///   });
  /// ```
  cleanup();
  configure(newConfig);
  CreateEvent get createEvent;
  findAllByAltText(container, text, options, waitForElementOptions);
  findAllByDisplayValue(container, text, options, waitForElementOptions);
  findAllByLabelText(container, text, options, waitForElementOptions);
  findAllByPlaceholderText(container, text, options, waitForElementOptions);
  findAllByRole(container, text, options, waitForElementOptions);
  findAllByTestId(container, text, options, waitForElementOptions);
  findAllByText(container, text, options, waitForElementOptions);
  findAllByTitle(container, text, options, waitForElementOptions);
  findByAltText(container, text, options, waitForElementOptions);
  findByDisplayValue(container, text, options, waitForElementOptions);
  findByLabelText(container, text, options, waitForElementOptions);
  findByPlaceholderText(container, text, options, waitForElementOptions);
  findByRole(container, text, options, waitForElementOptions);
  findByTestId(container, text, options, waitForElementOptions);
  findByText(container, text, options, waitForElementOptions);
  findByTitle(container, text, options, waitForElementOptions);
  fireEvent(node, init);
  getAllByAltText(container);
  getAllByDisplayValue(container);
  getAllByLabelText(container, text);
  getAllByPlaceholderText(container);
  getAllByRole(container);
  getAllByTestId(container);
  getAllByText(container);
  getAllByTitle(container);
  getByAltText(container);
  getByDisplayValue(container);
  getByLabelText(container);
  getByPlaceholderText(container);
  getByRole(container);
  getByTestId(container);
  getByText(container);
  getByTitle(container);
  getDefaultNormalizer(_temp);
  getElementError(message, container);
  getMultipleElementsFoundError(message, container);
  getNodeText(node);
  getQueriesForElement(element, queries);
  getRoles(container);
  logDOM();
  logRoles(dom);
  makeFindQuery(getter);
  makeGetAllQuery(allQuery, getMissingError);
  makeSingleQuery(allQuery, getMultipleError);
  prettyDOM(dom, maxLength, options);
  Queries get queries;
  queryAllByAltText(container, alt, _temp);
  queryAllByAttribute(attribute, container, text, _temp);
  queryAllByDisplayValue(container, value, _temp);
  queryAllByLabelText(container, text, _temp2);
  queryAllByPlaceholderText();
  queryAllByRole(container, role, _temp);
  queryAllByTestId();
  queryAllByText(container, text, _temp);
  queryAllByTitle(container, text, _temp);
  queryByAltText(container);
  queryByAttribute(attribute, container, text);
  queryByDisplayValue(container);
  queryByLabelText(container);
  queryByPlaceholderText(container);
  queryByRole(container);
  queryByTestId(container);
  queryByText(container);
  queryByTitle(container);
  QueryHelpers get queryHelpers;
  wait();
  waitForDomChange();
  waitForElement();
  waitForElementToBeRemoved();
  within(element, queries);
  render(ui, [options]);
}
