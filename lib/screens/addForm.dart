// Step 12: TextForm Field
// Step 13: Dropdown Field
// Step 14: Form State
// Step 15: Submit Data

import 'package:flutter/material.dart';
import 'package:myproject/models/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _age = 20;
  Job _job = Job.police;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("แบบฟอร์มบันทึกข้อมูล"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        // Step 8: use a stateful widget
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  maxLength: 20,
                  decoration: const InputDecoration(
                    label: Text("ชื่อ", style: TextStyle(fontSize: 20)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "กรุณาป้อนชื่อ";
                    }
                  },
                  onSaved: (value) {
                    _name = value!; // ! คือ ห้ามเป็นค่า null
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text("อายุ", style: TextStyle(fontSize: 20)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "กรุณาป้อนอายุ";
                    }
                  },
                  onSaved: (value) {
                    _age = int.parse(value.toString());
                  },
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField(
                  value: _job,
                  decoration: const InputDecoration(
                    label: Text("อาชีพ", style: TextStyle(fontSize: 20)),
                  ),
                  items:
                      Job.values.map((key) {
                        return DropdownMenuItem(
                          value: key,
                          child: Text(key.title),
                        );
                      }).toList(),
                  onChanged: (value) {
                    // print(value);
                    setState(() {
                      _job = value!;
                    });
                  },
                ),
                FilledButton(
                  onPressed: () {
                    _formKey.currentState!.validate();
                    _formKey.currentState!.save();
                    data.add(Person(name: _name, age: _age, job: _job));
                    print(data.length);
                    _formKey.currentState!
                        .reset(); // บันทึกแล้วให้เคลียร์ค่าใน Form ออก
                  },
                  style: FilledButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text("บันทึก", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
