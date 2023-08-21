import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(),hintText:"Add new task" ),
            ),

            //button -> save + cancel

            Row(
              children: [
                //save button

                //cancel button
              ],
            )
          ],
        ),
      ),
    );
  }
}
