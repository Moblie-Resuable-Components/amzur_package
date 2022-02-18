import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//Snackbar

showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
