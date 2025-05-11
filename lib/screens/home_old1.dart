// Step 4: make sperate files per screen
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // Step 5: More container, Column Widget main axis and cross axis
  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     Container(
    //       color: Colors.orange,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: const Text(
    //         "Hello World",
    //         style: TextStyle(fontSize: 30, letterSpacing: 3),
    //       ),
    //     ),
    //     Container(
    //       color: Colors.orange,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: const Text(
    //         "Hello World",
    //         style: TextStyle(fontSize: 30, letterSpacing: 3),
    //       ),
    //     ),
    //     Container(
    //       color: Colors.orange,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: const Text(
    //         "Hello World",
    //         style: TextStyle(fontSize: 30, letterSpacing: 3),
    //       ),
    //     ),
    //   ],
    // );

    // return Column(
    //   // mainAxisAlignment: MainAxisAlignment.start,
    //   // mainAxisAlignment: MainAxisAlignment.center,
    //   // mainAxisAlignment: MainAxisAlignment.end,
    //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: [
    //     Container(
    //       color: Colors.orange,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: const Text(
    //         "Hello World",
    //         style: TextStyle(fontSize: 30, letterSpacing: 3),
    //       ),
    //     ),
    //     Container(
    //       color: Colors.orange,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: const Text(
    //         "Hello World",
    //         style: TextStyle(fontSize: 30, letterSpacing: 3),
    //       ),
    //     ),
    //     Container(
    //       color: Colors.orange,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: const Text(
    //         "Hello World",
    //         style: TextStyle(fontSize: 30, letterSpacing: 3),
    //       ),
    //     ),
    //   ],
    // );

    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   crossAxisAlignment: CrossAxisAlignment.stretch,
    //   children: [
    //     Container(
    //       color: Colors.orange,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: const Text(
    //         "Hello World",
    //         style: TextStyle(fontSize: 30, letterSpacing: 3),
    //       ),
    //     ),
    //     Container(
    //       color: Colors.orange,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: const Text(
    //         "Hello World",
    //         style: TextStyle(fontSize: 30, letterSpacing: 3),
    //       ),
    //     ),
    //     Container(
    //       color: Colors.orange,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: const Text(
    //         "Hello World",
    //         style: TextStyle(fontSize: 30, letterSpacing: 3),
    //       ),
    //     ),
    //   ],
    // );

    // Step 5: Row Widget main axis and cross axis
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.end,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.orange,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
            "Hello",
            style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
        Container(
          color: Colors.orange,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
            "Hello",
            style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
        Container(
          color: Colors.orange,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
            "Hello",
            style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
      ],
    );
  }
}
