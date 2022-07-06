show(var x, var y) {
  print(x.runtimeType);
  print(y.runtimeType);
  if (x.runtimeType == int && y.runtimeType == String) {
    print("Inside If ...");
    return '$x $y';
  } else {
    return x + y;
  }
}

void main() {
  print(show(10, 20));
  print(show(10, "Ten"));
  print("Hello Dart");
  int a;
  String b;
  var g;
  g = 100;
  g = "Amit";
  var z = 100;
  //z = "Amit";
  dynamic q = 1000;
  q = true;
  q = [];
  int age = 21;
  print("Age is ${age + 1}");
  print("Age is $age");
  print("Age is " + age.toString());
}
