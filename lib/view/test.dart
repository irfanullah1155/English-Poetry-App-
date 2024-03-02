import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: <Widget>[
            Positioned(
              top: 100, // Customize the vertical position
              left: 20,  // Customize the horizontal position
              child: AlertDialog(
                title: Text("Custom Positioned Dialog"),
                content: Text("You can customize the position of this dialog."),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Close"),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Positioned Dialog Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showCustomDialog(context);
          },
          child: Text("Open Custom Dialog"),
        ),
      ),
    );
  }
}
