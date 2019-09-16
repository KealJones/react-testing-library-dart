@TestOn('browser')
import 'dart:html';
import 'dart:js_util' as js_util;

import 'package:react_testing_library_dart/react_testing_library.dart';
import 'package:test/test.dart';

import 'util.dart';

void main() async {
  group('react-testing-library-dart', () {
    group('testing tests', () {
      test("1", () {
        window.console.log(document.body.innerHtml);
        print(document.head.innerHtml);
        print(js_util.getProperty(window, 'React'));

        var test = TestingLibraryReact.render(genericReactElement);

        expect(test.getByText('Hello'), isNotNull);
      });
    });
  });
}
