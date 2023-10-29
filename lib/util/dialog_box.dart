// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo/util/my_button.dart';

class DialogBox extends StatelessWidget {

  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
   


   DialogBox({super.key, 
   required this.controller,
   required this.onCancel,
   required this.onSave,
   });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 230, 221, 221),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // USER INPUT
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFE0B3A5),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
                ),
                hintText: "Add new task",
              ),
            ),

            // BUTTONS
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save btn

                MyButton(text: "Save", onPressed: onSave,),
                

                const SizedBox(width: 8,),

                // cancel btn
                MyButton(text: "Cancel", onPressed: onCancel),

            ],)

          ],
        ),
      ),

    );
  }
}