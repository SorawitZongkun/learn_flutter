import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Step 6: Image Widget (file: setup in pubspec.yaml)
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.stretch,
    //   children: [
    //     Image.network(
    //       "https://ichef.bbci.co.uk/ace/standard/976/cpsprodpb/edf6/live/95f2d930-1aa2-11f0-999d-89a1b86ed8d9.jpg",
    //       width: 150,
    //       height: 150,
    //     ),
    //     const SizedBox(height: 10), // emtpy box for make a space
    //     Image.asset("assets/images/mbappe.jpg", width: 150, height: 150),
    //   ],
    // );

    // Step 7: Button Widget
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            onPressed: () {
              print("TextButton Click");
            },
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              print("FilledButton Click");
            },
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.red, width: 2),
            ),
            onPressed: () {
              print("OutlinedButton Click");
            },
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              foregroundColor: Colors.amberAccent,
            ),
            onPressed: () {
              print("ElevatedButton Click");
            },
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
