import 'package:flutter/material.dart';

void main() => runApp(RegistrationForm());

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Registration Page'),
        ),
        body: RegistrationFormBody(),
      ),
    );
  }
}

class RegistrationFormBody extends StatefulWidget {
  @override
  _RegistrationFormBodyState createState() => _RegistrationFormBodyState();
}

class _RegistrationFormBodyState extends State<RegistrationFormBody> {
  String name = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          // Name Text Field
          TextField(
            decoration: InputDecoration(labelText: 'Name'),
            onChanged: (value) {
              name = value;
            },
          ),
          SizedBox(height: 16),
          // Email Text Field
          TextField(
            decoration: InputDecoration(labelText: 'Email'),
            onChanged: (value) {
              email = value;
            },
          ),
          SizedBox(height: 16),
          // Submit Button
          ElevatedButton(
            onPressed: () {
              // Print the input values when submitted
              print('Name: $name, Email: $email');
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
