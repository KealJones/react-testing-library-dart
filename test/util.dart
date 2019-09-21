library react_testing_library_dart.test.util;

import 'dart:html';
import 'dart:js_util' as js_util;

HelloReactElement(text) => js_util.callMethod(window, 'createHello', [text]);
