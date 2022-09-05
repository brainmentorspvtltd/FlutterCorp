// Imperative Programming
List<int> list = [9000, 4000, 5000, 7000, 2000, 1000];
int compute() {
  int sum = 0;
  for (int i = 0; i < list.length; i++) {
    if (list[i] >= 5000) {
      sum = sum + list[i];
    }
  }
  return sum;
}

class Emp {
  late int id;
  late String name;
  late double salary;
  Emp.takeInput(this.id, this.name, this.salary);

  @override
  String toString() => 'Emp(id: $id, name: $name, salary: $salary)';
}

// Declarative Programming
void main() {
  List<Emp> empList = [
    Emp.takeInput(10, "Ram", 29000),
    Emp.takeInput(11, "Ramesh", 19000),
    Emp.takeInput(1, "Raju", 39000),
    Emp.takeInput(2, "Shyam", 9000)
  ];
  Emp empObj = empList.firstWhere((Emp emp) => emp.name == 'Raju');
  print(empObj);
  list.sort((int first, int second) => second - first);
  print(list);
  List<int> r2 = list.where((int element) => element >= 5000).toList();
  print(r2);
  int r = list.fold(0, (int prev, int current) {
    if (current >= 5000) {
      prev = prev + current;
    }
    return prev;
  });
  print(r);
}
