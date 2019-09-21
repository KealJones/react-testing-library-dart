import 'dart:html';

@TestOn('browser')

import 'package:react_testing_library/react_testing_library.dart';
import 'package:test/test.dart';

import 'util.dart';

void main() async {
  group('react-testing-library-dart', () {
    group('testing tests', () {
      tearDown(() {
        RTL.cleanup();
      });
      test("1", () {
        var test = RTL.render(HelloReactElement('World'));
        
        expect(test.getByText('Hello World'), isA<Element>());
        expect(test.getAllByText('Hello World'), isA<List>());
        expect(test.getAllByText('Hello World')[0], isA<Element>());
        expect(test.getByText(RegExp('Hello')).innerText, 'Hello World');

        test.rerender(HelloReactElement('Keal'));

        expect(test.getByText(RegExp('Keal')), isA<Element>());
        expect(test.getByText(RegExp('Keal')).innerText, 'Hello Keal');
      });

      test("2", () {
        var test = RTL.render(HelloReactElement('Dart'));

        expect(test.getByText('Hello Dart'), isNotNull);

        test.rerender(HelloReactElement('Fan'));

        expect(() => test.getByText(RegExp('React')), throwsA(anything));
      });
    });
  });
}
