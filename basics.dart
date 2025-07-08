/*
Variables, datatypes, Collections
Control flow(loops, branches, error handling)
Metadata
*/

void main() {
  //Variables use
  var name = 'JoyBoy';
  int age = 23;
  double pi = 2.314;
  final price = 233;
  //price = 233 this is not allowed

  print("My name is $name and i am $age years old");
  print("The value of pi is $pi and price is $price\n");

  late String desc;
  desc = 'This is description';

  String value = '''
This is a multiline string
and this is very useful
for dart users
''';

  print(value);
  //Nullable and non nullable types
  String str = "This can't be assign null";
  String? str2; // If not initialized then value be null
  print(str2);

  //Records in dart
  var record = ('First', a: 5, b: 6, 'last');
  print(record.$1);
  print(record.a);
  print(record.b);
  print(record.$2);

  //Lists
  List<String> names = ["Harsh", "Jack", "Rahul", "Lakshay"];
  print(
    "The length of names list is: ${names.length} and first elemengt is ${names[0]}",
  );

  var fruits = ["Apple", "Grapes", "Kiwi"]; //With var too

  //Sets
  Set<int> numbers = {1, 2, 4, 4}; // Duplicate automatically removed in sets
  print(numbers);

  // Map ->Key , Value pair
  Map<int, String> m1 = {1: "Harsh", 2: "Ram"};
  print(m1[1]);

  //Loops
  for (var i = 0; i < 5; i++) {
    //for loop
    print(i);
  }

  for (String name in names) {
    // For in loop
    print(name);
  }

  int i = 0;
  while (i < 10) {
    //break to terminate loops on given condition
    if (i == 8) break;
    //continue to skip the given condiotion iteration
    if (i == 4) {
      i++;
      continue;
    }
    print(i);
    i++;
  }

  do {
    //Execute once always
    print("Hello");
  } while (i < 8);

  names.forEach((name) => print("${name + " Sir"}"));

  //Branches
  var count = 10;
  switch (count) {
    case 1:
      print("Value is 1");
      break;
    case 10:
      print("Value is 11");
      break;
    default:
      print("Not found");
  }

  bool isAdult = true;
  if (isAdult) {
    print("Can go to club!");
  } else {
    print("No clubbing only studiying");
  }

  
}
