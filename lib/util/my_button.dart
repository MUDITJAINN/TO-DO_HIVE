import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onpressed;
   MyButton({
    Key? key,
    required this.text,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}
