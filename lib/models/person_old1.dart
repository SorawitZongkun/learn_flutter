// Step 10: make a model for store data

class Person {
  // make a constuctor
  Person({required this.name, required this.age, required this.job});
  String name;
  int age;
  String job;
}

List<Person> data = [
  Person(name: "สมชาย", age: 35, job: "นักร้อง"),
  Person(name: "สมพงษ์", age: 30, job: "หมอ"),
  Person(name: "สมยศ", age: 40, job: "ครู"),
  Person(name: "สมศักดิ์", age: 42, job: "ครู"),
  Person(name: "สมศรี", age: 43, job: "ครู"),
];
