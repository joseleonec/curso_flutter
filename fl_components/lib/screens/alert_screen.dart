import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);
  _showAlertIOS(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text("Title"),
            content: Column(
              children: const [
                Text("This is the content of the alert box"),
                FlutterLogo(
                  size: 100,
                ),
              ],
            ),
            actions: [
              CupertinoDialogAction(
                child:
                    const Text("Cancel", style: TextStyle(color: Colors.red)),
                onPressed: () => Navigator.pop(context),
              ),
              CupertinoDialogAction(
                child: const Text("Ok"),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        });
  }

  _showAlertAndroid(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          title: Text('Title', style: TextStyle(color: Colors.white)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('This is the content of the alert box',
                  style: TextStyle(color: Colors.white)),
              FlutterLogo(
                size: 100.0,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Ok', style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              // set background color from theme
              primary: Theme.of(context).primaryColor,
              shape: StadiumBorder(),
              elevation: 0.0,
              shadowColor: Colors.transparent),
          child: Text('Show Alert', style: TextStyle(fontSize: 16)),
          // onPressed: () => _showAlertAndroid(context),
          onPressed: () => Platform.isAndroid
              ? _showAlertAndroid(context)
              : _showAlertIOS(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_alert),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
