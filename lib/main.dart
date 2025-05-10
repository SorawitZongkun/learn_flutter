import 'package:flutter/material.dart';

void main() {
  // Step 1: What is appBar and body

  // const app = MaterialApp(title: "My Title", home: Text("Hello Word"));
  // runApp(app);

  // runApp(
  //   MaterialApp(
  //     title: "My Title",
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: const Text("My App"),
  //         backgroundColor: Colors.blue,
  //         centerTitle: true,
  //       ),
  //       body: const Text("Hello Flutter"),
  //     ),
  //   ),
  // );

  // Step 2: Stateless Widget
  runApp(
    MaterialApp(
      title: "My Title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: const Home(),
      ),
    ),
  );
}

// Step 2: Stateless Widget
// Home meaning first page
// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Text("Hello Flutter");
//   }
// }

// Step 3: Container
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(color: Colors.orange, width: 300, height: 300);
    // return Container(color: Colors.orange, margin: EdgeInsets.all(10));
    // return Container(
    //   color: Colors.orange,
    //   margin: EdgeInsets.fromLTRB(10, 5, 10, 20),
    // );
    return Container(
      color: Colors.orange,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      padding: const EdgeInsets.all(20),
      // child: const Text("Hello World"),
      child: const Text(
        "Hello World",
        style: TextStyle(fontSize: 30, letterSpacing: 3),
      ),
    );
  }
}

// 1 hr 31 mins 39 seconds
