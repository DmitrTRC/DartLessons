import 'package:lesson1/lesson1.dart' as l1;

void main(List<String> arguments) {
  print('Hello world: ${l1.calculate()}!');

  // int a = 10;
  // int b = 2;

  String st = 'Just a demo string';

  var t  = ('This is a String', 4, true);

  var (a, b, c) = t;
  // Equal c++ dynamic_cast<std::tuple<std::string, int, bool>>

}

// std::Vector <std::String> arguments;
// List: arguments
// main (  int argc, char **argv )
// int a ( named memory allocation 0xffff43 )
// python: print(f'Hello world: {l1.calculate()}!')
