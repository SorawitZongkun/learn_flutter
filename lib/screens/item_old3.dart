// Step 11: use google font

import 'package:flutter/material.dart';
import 'package:myproject/models/person.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    // style: const TextStyle(
                    //   fontSize: 30,
                    //   fontWeight: FontWeight.bold,
                    // ),
                    style: GoogleFonts.kanit(
                      textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFFFF), // color: Colors.white,
                      ),
                    ), // google font
                  ),
                  Text(
                    // "อายุ : ${data[index].age} ปี, อาชีพ : ${data[index].job}",
                    // style: TextStyle(fontSize: 20),
                    "อายุ : ${data[index].age} ปี, อาชีพ : ${data[index].job.title}", // for enum
                    style: GoogleFonts.prompt(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: Color(0xFFFFFFFF), // color: Colors.white,
                      ),
                    ), // google font
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
