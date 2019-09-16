@JS()
library react_testing_library_dart.interop;

import 'dart:html';

import 'package:js/js.dart';

@JS('Promise')
abstract class Promise<T> {
  external Promise then(onFulfilled(T value), onRejected(Object reason));
}

@JS('TestingLibraryReact')
class TestingLibraryReact {
  external static act(callback);
  external static bindElementToQueries(element, queries);
  external static buildQueries(queryAllBy, getMultipleError, getMissingError);

  /// Unmounts React trees that were mounted with render.
  ///
  /// Example:
  /// ```
  ///   tearDown((){
  ///     cleanup();
  ///   });
  /// ```
  external static cleanup();
  external static configure(newConfig);
  external static CreateEvent get createEvent;
  external static findAllByAltText(
      container, text, options, waitForElementOptions);
  external static findAllByDisplayValue(
      container, text, options, waitForElementOptions);
  external static findAllByLabelText(
      container, text, options, waitForElementOptions);
  external static findAllByPlaceholderText(
      container, text, options, waitForElementOptions);
  external static findAllByRole(
      container, text, options, waitForElementOptions);
  external static findAllByTestId(
      container, text, options, waitForElementOptions);
  external static findAllByText(
      container, text, options, waitForElementOptions);
  external static findAllByTitle(
      container, text, options, waitForElementOptions);
  external static findByAltText(
      container, text, options, waitForElementOptions);
  external static findByDisplayValue(
      container, text, options, waitForElementOptions);
  external static findByLabelText(
      container, text, options, waitForElementOptions);
  external static findByPlaceholderText(
      container, text, options, waitForElementOptions);
  external static findByRole(container, text, options, waitForElementOptions);
  external static findByTestId(container, text, options, waitForElementOptions);
  external static findByText(container, text, options, waitForElementOptions);
  external static findByTitle(container, text, options, waitForElementOptions);
  external static fireEvent(node, init);
  external static getAllByAltText(container);
  external static getAllByDisplayValue(container);
  external static getAllByLabelText(container, text);
  external static getAllByPlaceholderText(container);
  external static getAllByRole(container);
  external static getAllByTestId(container);
  external static getAllByText(container);
  external static getAllByTitle(container);
  external static getByAltText(container);
  external static getByDisplayValue(container);
  external static getByLabelText(container);
  external static getByPlaceholderText(container);
  external static getByRole(container);
  external static getByTestId(container);
  external static getByText(container);
  external static getByTitle(container);
  external static getDefaultNormalizer(_temp);
  external static getElementError(message, container);
  external static getMultipleElementsFoundError(message, container);
  external static getNodeText(node);
  external static getQueriesForElement(element, queries);
  external static getRoles(container);
  external static logDOM();
  external static logRoles(dom);
  external static makeFindQuery(getter);
  external static makeGetAllQuery(allQuery, getMissingError);
  external static makeSingleQuery(allQuery, getMultipleError);
  external static prettyDOM(dom, maxLength, options);
  external static Queries get queries;
  external static queryAllByAltText(container, alt, _temp);
  external static queryAllByAttribute(attribute, container, text, _temp);
  external static queryAllByDisplayValue(container, value, _temp);
  external static queryAllByLabelText(container, text, _temp2);
  external static queryAllByPlaceholderText();
  external static queryAllByRole(container, role, _temp);
  external static queryAllByTestId();
  external static queryAllByText(container, text, _temp);
  external static queryAllByTitle(container, text, _temp);
  external static queryByAltText(container);
  external static queryByAttribute(attribute, container, text);
  external static queryByDisplayValue(container);
  external static queryByLabelText(container);
  external static queryByPlaceholderText(container);
  external static queryByRole(container);
  external static queryByTestId(container);
  external static queryByText(container);
  external static queryByTitle(container);
  external static QueryHelpers get queryHelpers;
  external static RenderResult render(dynamic ui, [RenderOptions options]);
  external static wait();
  external static waitForDomChange();
  external static waitForElement();
  external static waitForElementToBeRemoved();
  external static within(element, queries);
}

@JS()
@anonymous
class RenderOptions {
  external get container;
  external set container(value);
  external get baseElement;
  external set baseElement(value);
  external get hydrate;
  external set hydrate(value);
  external get wrapper;
  external set wrapper(value);
  external get queries;
  external set queries(value);
}

@JS()
@anonymous
class RenderResult {
  external DocumentFragment asFragment();
  external Element get baseElement;
  external Element get container;
  external String debug();
  external Promise<List<Element>> findAllByAltText();
  external Promise<List<Element>> findAllByDisplayValue();
  external Promise<List<Element>> findAllByLabelText();
  external Promise<List<Element>> findAllByPlaceholderText();
  external Promise<List<Element>> findAllByRole();
  external Promise<List<Element>> findAllByTestId();
  external Promise<List<Element>> findAllByText(String text);
  external Promise<List<Element>> findAllByTitle();
  external Promise<Element> findByAltText();
  external Promise<Element> findByDisplayValue();
  external Promise<Element> findByLabelText();
  external Promise<Element> findByPlaceholderText();
  external Promise<Element> findByRole();
  external Promise<Element> findByTestId();
  external Promise<Element> findByText(String text);
  external Promise<Element> findByTitle();
  external List<Element> getAllByAltText();
  external List<Element> getAllByDisplayValue();
  external List<Element> getAllByLabelText();
  external List<Element> getAllByPlaceholderText();
  external List<Element> getAllByRole();
  external List<Element> getAllByTestId();
  external List<Element> getAllByText(String text);
  external List<Element> getAllByTitle();
  external Element getByAltText();
  external Element getByDisplayValue();
  external Element getByLabelText();
  external Element getByPlaceholderText();
  external Element getByRole();
  external Element getByTestId();
  external Element getByText(String text);
  external Element getByTitle();
  external List<Element> queryAllByAltText();
  external List<Element> queryAllByDisplayValue();
  external List<Element> queryAllByLabelText();
  external List<Element> queryAllByPlaceholderText();
  external List<Element> queryAllByRole();
  external List<Element> queryAllByTestId();
  external List<Element> queryAllByText(String text);
  external List<Element> queryAllByTitle();
  external Element queryByAltText();
  external Element queryByDisplayValue();
  external Element queryByLabelText();
  external Element queryByPlaceholderText();
  external Element queryByRole();
  external Element queryByTestId();
  external Element queryByText(String text);
  external Element queryByTitle();
  external RenderResult rerender(dynamic rerenderUi);
  external void unmount();
}

@JS('TestingLibraryReact.createEvent')
class CreateEvent {
  external copy(node, init);
  external cut(node, init);
  external paste(node, init);
  external compositionEnd(node, init);
  external compositionStart(node, init);
  external compositionUpdate(node, init);
  external keyDown(node, init);
  external keyPress(node, init);
  external keyUp(node, init);
  external focus(node, init);
  external blur(node, init);
  external focusIn(node, init);
  external focusOut(node, init);
  external change(node, init);
  external input(node, init);
  external invalid(node, init);
  external submit(node, init);
  external click(node, init);
  external contextMenu(node, init);
  external dblClick(node, init);
  external drag(node, init);
  external dragEnd(node, init);
  external dragEnter(node, init);
  external dragExit(node, init);
  external dragLeave(node, init);
  external dragOver(node, init);
  external dragStart(node, init);
  external drop(node, init);
  external mouseDown(node, init);
  external mouseEnter(node, init);
  external mouseLeave(node, init);
  external mouseMove(node, init);
  external mouseOut(node, init);
  external mouseOver(node, init);
  external mouseUp(node, init);
  external select(node, init);
  external touchCancel(node, init);
  external touchEnd(node, init);
  external touchMove(node, init);
  external touchStart(node, init);
  external scroll(node, init);
  external wheel(node, init);
  external abort(node, init);
  external canPlay(node, init);
  external canPlayThrough(node, init);
  external durationChange(node, init);
  external emptied(node, init);
  external encrypted(node, init);
  external ended(node, init);
  external loadedData(node, init);
  external loadedMetadata(node, init);
  external loadStart(node, init);
  external pause(node, init);
  external play(node, init);
  external playing(node, init);
  external progress(node, init);
  external rateChange(node, init);
  external seeked(node, init);
  external seeking(node, init);
  external stalled(node, init);
  external suspend(node, init);
  external timeUpdate(node, init);
  external volumeChange(node, init);
  external waiting(node, init);
  external load(node, init);
  external error(node, init);
  external animationStart(node, init);
  external animationEnd(node, init);
  external animationIteration(node, init);
  external transitionEnd(node, init);
  external pointerOver(node, init);
  external pointerEnter(node, init);
  external pointerDown(node, init);
  external pointerMove(node, init);
  external pointerUp(node, init);
  external pointerCancel(node, init);
  external pointerOut(node, init);
  external pointerLeave(node, init);
  external gotPointerCapture(node, init);
  external lostPointerCapture(node, init);
}

@JS('TestingLibraryReact.queries')
class Queries {
  external queryAllByLabelText(container, text, _temp2);
  external queryByLabelText(container);
  external getAllByLabelText(container, text);
  external getByLabelText(container);
  external findAllByLabelText(container, text, options, waitForElementOptions);
  external findByLabelText(container, text, options, waitForElementOptions);
  external queryByPlaceholderText(container);
  external queryAllByPlaceholderText();
  external getByPlaceholderText(container);
  external getAllByPlaceholderText(container);
  external findAllByPlaceholderText(
      container, text, options, waitForElementOptions);
  external findByPlaceholderText(
      container, text, options, waitForElementOptions);
  external queryByText(container);
  external queryAllByText(container, text, _temp);
  external getByText(container);
  external getAllByText(container);
  external findAllByText(container, text, options, waitForElementOptions);
  external findByText(container, text, options, waitForElementOptions);
  external queryByDisplayValue(container);
  external queryAllByDisplayValue(container, value, _temp);
  external getByDisplayValue(container);
  external getAllByDisplayValue(container);
  external findAllByDisplayValue(
      container, text, options, waitForElementOptions);
  external findByDisplayValue(container, text, options, waitForElementOptions);
  external queryByAltText(container);
  external queryAllByAltText(container, alt, _temp);
  external getByAltText(container);
  external getAllByAltText(container);
  external findAllByAltText(container, text, options, waitForElementOptions);
  external findByAltText(container, text, options, waitForElementOptions);
  external queryByTitle(container);
  external queryAllByTitle(container, text, _temp);
  external getByTitle(container);
  external getAllByTitle(container);
  external findAllByTitle(container, text, options, waitForElementOptions);
  external findByTitle(container, text, options, waitForElementOptions);
  external queryByRole(container);
  external queryAllByRole(container, role, _temp);
  external getAllByRole(container);
  external getByRole(container);
  external findAllByRole(container, text, options, waitForElementOptions);
  external findByRole(container, text, options, waitForElementOptions);
  external queryByTestId(container);
  external queryAllByTestId();
  external getByTestId(container);
  external getAllByTestId(container);
  external findAllByTestId(container, text, options, waitForElementOptions);
  external findByTestId(container, text, options, waitForElementOptions);
}

@JS('TestingLibraryReact.queryHelpers')
class QueryHelpers {
  external getElementError(message, container);
  external getMultipleElementsFoundError(message, container);
  external queryAllByAttribute(attribute, container, text, _temp);
  external queryByAttribute(attribute, container, text);
  external makeSingleQuery(allQuery, getMultipleError);
  external makeGetAllQuery(allQuery, getMissingError);
  external makeFindQuery(getter);
  external buildQueries(queryAllBy, getMultipleError, getMissingError);
}
