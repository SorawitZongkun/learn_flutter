// Step 16: Routing

import 'package:flutter/material.dart';
import 'package:myproject/models/person.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myproject/screens/addForm.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: data[index].job.color, // for enum
                ),
                margin: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data[index].name,
                          style: GoogleFonts.kanit(
                            textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF), // color: Colors.white,
                            ),
                          ), // google font
                        ),
                        Text(
                          "อายุ : ${data[index].age} ปี, อาชีพ : ${data[index].job.title}", // for enum
                          style: GoogleFonts.prompt(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ), // google font
                        ),
                      ],
                    ),
                    Image.asset(
                      data[index].job.image,
                      width: 70,
                      height: 70,
                    ), // for enum
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: IconButton(
            onPressed: () {
              // pushReplacement เป็นการเอาหน้าใหม่มาแทนที่ ไม่สามารถ back กลับได้
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (ctx) => const AddForm()),
              );
            },
            icon: Icon(Icons.add, size: 40, color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
