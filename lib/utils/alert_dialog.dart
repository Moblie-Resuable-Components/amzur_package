


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

displayDialog(BuildContext context,
    {String title = "", String content = "", Function? event, String? buttonText}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return  AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            ElevatedButton(
              child: Text(buttonText ?? "OK"),
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // background
                onPrimary: Colors.white, // foreground
              ),
              // onPressed: event ?? () => Navigator.pop(context),

              onPressed: (){
                if(event !=null){
                  Navigator.pop(context);
                  event();
                }else{
                  Navigator.pop(context);
                }
              },

            ),
          ],
        );
      }
  );
}