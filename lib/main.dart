import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String username;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onSaved: onUsernameSaved,
              ),
              TextFormField(
                onSaved: onPasswordSaved,
              ),
              RaisedButton(
                onPressed: onButtonPressed,
                child: Text("Save"),
              )
            ],
          ),
        ),
      ),
    );
  }

  onButtonPressed() {
    formKey.currentState.save();
  }

  onPasswordSaved(String data) {
    print("password: $data");
  }

  onUsernameSaved(String data) {
    username = data;
    print("username: $data");
  }
}
