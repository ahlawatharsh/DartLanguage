//Normal Function
int sumOfNumbers(int a, int b) {
  return a + b;
}

// Return type can be omit and a optional positional parameter
multiplyNumbers(int a, int b, [int? c]) {
  if (c != null) {
    return a * b * c;
  }
  return a * b;
}

//Named parameters(Optional if not marked as required)
void enableFlags({bool? bold, String? name}) {
  //Some Work if they are not null else
  print("Hello from Enable flag function");
}

//Can use => to return something for a single expression only
int sumOfTwo(int a, int b) => a + b;

//Anonymous Function
List<String> names = ["Harsh", "Ram", "Jackson"];
List ulist =
    names.map((name) {
      // Anonymous function (name){}
      return name.toUpperCase();
    }).toList();

//Required named parameters
void getName({required String? name}) {
  print(name);
}

//Lexical Scope working
void outerFunction() {
  var outerVar = "I am outer variable";
  void innerFunction() {
    print(outerVar); //Accessible due to lexical scope
  }

  innerFunction();
}

//Lexical Closures
Function makeAdder(int x) {
  return (int i) => x + i;
}

void helperForClosure() {
  var add1 = makeAdder(3);
  add1(2); //Give output as 5 (3+2)
}

//Classes and objects
class Point {
  double? x, y;
  Point(this.x, this.y); //Generative Constructor

  Point.origin() : x = 0, y = 0; //Named Constructor
  Point.alongXaxis(double x) : this(x, 0); //Redirecting Constructor
}

//Factory Constructor Use
class Logger {
  static final Logger _instance = Logger._internal();

  factory Logger() {
    return _instance;
  }
  Logger._internal();
}

//Constructor Inhertance
class Animal {
  String name;
  int? age;
  Animal(this.name);
  Animal.named(this.name, this.age);
}

class Dog extends Animal {
  Dog(super.name); // Explicitly call parent constructor
  Dog.named(super.name, super.age)
    : super.named(); //Named Constructor inhertance
}

//Getters and setters
class Rectangle {
  double left, top, width, height;
  Rectangle(this.left, this.top, this.width, this.height);

  double get right => left + width; // getter
  //objectnmae.right
  set right(double value) => left = value - width; //setter
  //objectname.right = value;
}

//Abstract Method
abstract class Doer {
  void doSomething();
}

class ExtraDoer extends Doer {
  @override
  void doSomething() {
    print("This is doing extra work!");
  }
}

void main() {
  var p1 = Point(3, 2);
  var p2 = Point.origin();
  print(p1.x);
  print(p2.x);
}
