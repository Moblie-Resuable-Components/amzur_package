import 'package:flutter/material.dart';

import 'package:amzur_package/animated_textformfield/animated_textformfield.dart';
import 'package:amzur_package/animated_textformfields.dart';
//
import 'package:amzur_package/utils/alert_dialog.dart';
//
import 'package:amzur_package/utils/snackbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Utility Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const DemoPage(title: 'Utility Project'),
    );
  }
}

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> with TickerProviderStateMixin {
  FocusNode myFocusNode = FocusNode();
  TextEditingController textEditingControllerAnimated =
      TextEditingController();
  TextEditingController textEditingControllerLite = TextEditingController();
  TextEditingController textEditingControllerSlideIn =
      TextEditingController();

  @override
  void dispose() {
    textEditingControllerAnimated.dispose();
    textEditingControllerLite.dispose();
    textEditingControllerSlideIn.dispose();
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // const Padding(
            //   padding:
            //   EdgeInsets.symmetric(horizontal: 8.0, vertical: 24.0),
            //   child: Text(
            //     'Animated TextFields Demo',
            //     style: TextStyle(
            //       fontSize: 24.0,
            //     ),
            //     maxLines: 3,
            //   ),
            // ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(36.0, 12.0, 12.0, 4.0),
                child: Text(
                  'AnimatedTextFormField',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                  maxLines: 1,
                ),
              ),
            ),
            // this example describes how to use AnimatedTextFormField
            AnimatedTextFormField(
              width: MediaQuery.of(context).size.width * 0.875,
              height: 48.0,
              inputType: TextInputType.name,
              hintText: "Name",
              controller: textEditingControllerAnimated,
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
              focusNode: myFocusNode,
              cornerRadius: BorderRadius.circular(14.0),
            ),
            // const Align(
            //   alignment: Alignment.centerLeft,
            //   child: Padding(
            //     padding: EdgeInsets.fromLTRB(36.0, 24.0, 12.0, 4.0),
            //     child: Text(
            //       'CustomTextFormFieldLite',
            //       style: TextStyle(
            //         fontSize: 18.0,
            //       ),
            //       maxLines: 1,
            //     ),
            //   ),
            // ),
            // // this example describes how to use CustomTextFormFieldLite
            // CustomTextFormFieldLite(
            //   width: MediaQuery.of(context).size.width * 0.875,
            //   height: 48.0,
            //   inputType: TextInputType.text,
            //   hintText: "Name",
            //   controller: textEditingControllerLite,
            //   textStyle: const TextStyle(
            //     color: Colors.black,
            //     fontSize: 16.0,
            //   ),
            //   cornerRadius: BorderRadius.circular(14.0),
            // ),
            // const Align(
            //   alignment: Alignment.centerLeft,
            //   child: Padding(
            //     padding: EdgeInsets.fromLTRB(36.0, 24.0, 12.0, 4.0),
            //     child: Text(
            //       'SlideInTextFormField',
            //       style: TextStyle(
            //         fontSize: 18.0,
            //       ),
            //       maxLines: 1,
            //     ),
            //   ),
            // ),
            // // this example describes how to use SlideInTextFormField
            // SlideInTextFormField(
            //   vsync: this,
            //   width: MediaQuery.of(context).size.width * 0.875,
            //   height: 48.0,
            //   inputType: TextInputType.text,
            //   fieldText: "Name",
            //   controller: textEditingControllerSlideIn,
            //   textStyle: const TextStyle(
            //     color: Colors.black,
            //     fontSize: 16.0,
            //   ),
            //   cornerRadius: BorderRadius.circular(14.0),
            // ),

            Button(
                backgroundColor: Colors.orange,
                textColor: Colors.black,
                text: "Show Snack Bar",
                onTap: () {
                  showSnackBar(context, "Showing SnackBar");
                }),

            Button(
                backgroundColor: Colors.orange,
                textColor: Colors.black,
                text: "Show Alert Dialog",
                onTap: () {
                  displayDialog(context,
                      title: "Alert Title",
                      content: "here are description",
                      buttonText: "close it");
                }),

            // Button(
            //     backgroundColor: Colors.orange,
            //     textColor: Colors.black,
            //     text: "Show Progress",
            //     onTap: (){
            //
            //     }
            // ),
          ],
        ),
      ),
    );
  }
}
