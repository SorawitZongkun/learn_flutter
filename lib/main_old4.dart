import 'package:flutter/material.dart';
import 'package:myproject/screens/item.dart';
import 'package:myproject/screens/addForm.dart';

void main() {
  // Step 12: TextForm Field
  runApp(const AddForm());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: const Item(),
      ),
    );
  }
}
