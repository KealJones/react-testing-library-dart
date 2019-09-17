@TestOn('browser')

import 'package:react_testing_library_dart/react_testing_library.dart';
import 'package:test/test.dart';

import 'util.dart';

void main() async {
  group('react-testing-library-dart', () {
    group('testing tests', () {
      tearDown(() {
        TestingLibraryReact.cleanup();
      });
      test("1", () {
        var test = TestingLibraryReact.render(HelloReactElement('World'));

        expect(test.getByText('Hello World'), isNotNull);

        test.rerender(HelloReactElement('Keal'));

        expect(test.getByText('Hello Keal'), isNotNull);
      });

      test("2", () {
        var test = TestingLibraryReact.render(HelloReactElement('Dart'));

        expect(test.getByText('Hello Dart'), isNotNull);

        test.rerender(HelloReactElement('Fan'));

        expect(() => test.getByText('Hello React'), throwsA(anything));
      });
    });
  });
}
