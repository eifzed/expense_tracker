import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final Function() buttonHandler;
  final String buttonText;
  AdaptiveFlatButton(this.buttonText, this.buttonHandler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              buttonText,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: buttonHandler)
        : TextButton(
            onPressed: buttonHandler,
            child: Text(
              buttonText,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          );
  }
}
