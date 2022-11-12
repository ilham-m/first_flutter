import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget{
  const CustomBackButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 25, left: 10, right: 10),
        child: ElevatedButton(
          onPressed: (() {
            Navigator.pop(context);
          }),
          style : ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue.shade200),
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
          ),
          child: Text(text)
        ),
      );
  }

}