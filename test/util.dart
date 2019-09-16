library react_testing_library_dart.test;

import 'interop_util.dart';

var genericReactElement = JsNoArgFunction('''
  class Hello extends React.Component {
    render() {
      return React.createElement('div', null, `Hello \$\{this.props.toWhat\}`);
    }
  }
  return React.createElement(Hello, {toWhat: 'World'}, null);
''');
