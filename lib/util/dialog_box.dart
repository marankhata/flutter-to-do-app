import 'package:flutter/material.dart';
import 'package:to_do_list/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;

  //Method for Saving
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      content: Container(
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Get User Input
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: ("Enter new task"),
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),

              // Save & Cancel Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Save Button
                  MyButton(text: "Save", onPressed: onSave),

                  const SizedBox(width: 10),

                  //Cancel Button
                  MyButton(text: "Cancel", onPressed: onCancel),
                ],
              )
            ],
          )),
    );
  }
}
