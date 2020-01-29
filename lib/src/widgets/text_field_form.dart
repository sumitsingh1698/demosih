import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String type;
  final Map<String, String> data;

  TextFormFieldCustom({
    @required this.type,
    @required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: TextFormField(
        onSaved: (String value) {
          data["$type"] = value;
        },
        validator: (value) {
          if (value.isEmpty) return "Can't be empty";
          if (type == "Email") {
            if (!RegExp("^[A-Za-z0-9+_.-]+@(.+)\$").hasMatch(value))
              return "Enter valid email";
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: "$type",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
