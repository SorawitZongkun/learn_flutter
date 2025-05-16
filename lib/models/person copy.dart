// Step 11: use enum เพื่อเก็บค่าคงที่

import 'package:flutter/material.dart';

enum Job {
  doctor(title: "หมอ", image: "assets/images/mbappe.jpg", color: Colors.green),
  teacher(title: "ครู", image: "assets/images/mbappe.jpg", color: Colors.blue),
  singer(
    title: "นักร้อง",
    image: "assets/images/mbappe.jpg",
    color: Colors.red,
  ),
  police(
    title: "ตำรวจ",
    image: "assets/images/mbappe.jpg",
    color: Colors.purple,
  );

  const Job({required this.title, required this.image, required this.color});
  final String title;
  final String image;
  final Color color;
}

class Person {
  // make a constuctor
  Person({required this.name, required this.age, required this.job});
  String name;
  int age;
  Job job;
}

List<Person> data = [
  Person(name: "สมชาย", age: 35, job: Job.singer),
  Person(name: "สมพงษ์", age: 30, job: Job.doctor),
  Person(name: "สมยศ", age: 40, job: Job.teacher),
  Person(name: "สมศักดิ์", age: 42, job: Job.teacher),
  Person(name: "สมศรี", age: 43, job: Job.police),
];
