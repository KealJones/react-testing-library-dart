@TestOn('browser')

import 'package:react_testing_library_dart/react_testing_library.dart';
import 'package:test/test.dart';

import 'util.dart';

void main() async {
  group('react-testing-library-dart', () {
    group('testing tests', () {
      test("1", () {
        var test = TestingLibraryReact.render(genericReactElement());

        expect(test.getByText('Hello World'), isNotNull);
      });
    });
  });
}
