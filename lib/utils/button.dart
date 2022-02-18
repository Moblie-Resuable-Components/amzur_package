import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color backgroundColor, textColor;
  final String text;
  final VoidCallback onTap;

  const Button(
      {Key? key,
      required this.backgroundColor,
      required this.textColor,
      required this.text,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          )),
      child: TextButton(
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
          onPressed: () => onTap()),
    );
  }
}
