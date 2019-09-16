library react_testing_library_dart.test;

import 'interop_util.dart';

var HelloReactElement = Js1ArgFunction('text', '''
    class Hello extends React.Component {
      render() {
        return React.createElement('div', null, `Hello \$\{this.props.toWhat\}`);
      }
    }
    return React.createElement(Hello, {toWhat: text}, null);
  ''');

