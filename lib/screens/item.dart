// Step 10: make a model for store data

import 'package:flutter/material.dart';
import 'package:myproject/models/person.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            // color: Colors.orange,
            color: data[index].job.color, // for enum
          ),
          margin: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
          padding: EdgeInsets.all(40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data[index].name,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    // "อายุ : ${data[index].age} ปี, อาชีพ : ${data[index].job}",
                    "อายุ : ${data[index].age} ปี, อาชีพ : ${data[index].job.title}", // for enum
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              // Image.asset("assets/images/mbappe.jpg", width: 70, height: 70),
              Image.asset(
                data[index].job.image,
                width: 70,
                height: 70,
              ), // for enum
            ],
          ),
        );
      },
    );
  }
}
