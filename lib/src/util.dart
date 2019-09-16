library react_testing_library_dart.util;

import 'dart:html';
import 'dart:js_util' as js_util;

const contentDivId = 'content';

Future<Null> enableTestMode() async {
  if (js_util.getProperty(window, 'React') == null) {
    var reactJsScript = ScriptElement();
    reactJsScript.src =
        'packages/react_testing_library_dart/js/react.development.js';
    document.head.append(reactJsScript);
  }
  await Future.delayed(Duration(seconds: 1));
  if (js_util.getProperty(window, 'ReactDOM') == null) {
    var reactDomJsScript = ScriptElement();
    reactDomJsScript.src =
        'packages/react_testing_library_dart/js/react-dom.development.js';
    document.head.append(reactDomJsScript);
  }
  await Future.delayed(Duration(seconds: 1));
  if (js_util.getProperty(window, 'ReactTestUtils') == null) {
    var reactDomTestUtilsJsScript = ScriptElement();
    reactDomTestUtilsJsScript.src =
        'packages/react_testing_library_dart/js/react-dom-test-utils.development.js';
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
        'packages/react_testing_library_dart/js/testing-library-react.umd.js';
    document.head.append(reactTestingLibraryJsScript);
  }
  await Future.delayed(Duration(seconds: 1));
}
