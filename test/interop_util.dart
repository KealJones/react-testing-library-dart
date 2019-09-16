@JS()
library react_testing_library_dart.test;

import 'package:js/js.dart';

@JS('Function')
external JsNoArgFunction(String functionBody);

@JS('Function')
external Js1ArgFunction(arg1, String functionBody);

@JS('Function')
external Js2ArgFunction(arg1, arg2, String functionBody);

@JS('Function')
external Js3ArgFunction(arg1, arg2, arg3, String functionBody);
