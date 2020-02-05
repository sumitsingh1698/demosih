import 'package:demosih/src/routing/application.dart';
import 'package:demosih/src/widgets/text_title_custom.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadPage extends StatefulWidget {
  UploadPage({Key key}) : super(key: key);

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    var file1, file2;
    return Scaffold(
      appBar: AppBar(title: Text("Upload Images")),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: <Widget>[
            TextTitleCustom(text: "Photo (less than 100kb):", type: "list"),
            RaisedButton(
                color: Colors.greenAccent,
                onPressed: () async {
                  file1 =
                      await ImagePicker.pickImage(source: ImageSource.gallery);
                },
                child: Text("Upload Image")),
            TextTitleCustom(text: "Signature (less than 100kb):", type: "list"),
            RaisedButton(
                color: Colors.greenAccent,
                onPressed: () async {
                  file2 =
                      await ImagePicker.pickImage(source: ImageSource.gallery);
                },
                child: Text("Upload Signature")),
            RaisedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    child: AlertDialog(
                      title: TextTitleCustom(type: "heading",text:"Notification"),
                      actions: <Widget>[
                        RaisedButton(
                          color: Colors.greenAccent,
                          onPressed: () {
                            Map<String, String> data = Map<String, String>();
                            Application.router.navigateTo(
                                context, "/profile/$data",
                                replace: false);
                          },
                          child: Text("Go to Profile"),
                        ),
                      ],
                      
                      content: TextTitleCustom(type: "list",text:"Successfully Uploaded"),
                    ));
              },
              color: Colors.red,
              child: Text(
                "Next",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      )),
    );
  }
}
