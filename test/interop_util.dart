@JS()
library react_testing_library_dart.test;

import 'package:js/js.dart';

@JS('Function')
external JsNoArgFunction(String functionBody);

@JS('Function')
external Js1ArgFunction(String arg1name, String functionBody);

@JS('Function')
external Js2ArgFunction(String arg1name, String arg2name, String functionBody);

@JS('Function')
external Js3ArgFunction(String arg1name, String arg2name, String arg3name, String functionBody);
