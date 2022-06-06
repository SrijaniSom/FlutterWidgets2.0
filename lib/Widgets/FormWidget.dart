import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  trysubmit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      submitform();
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form Widget'),
          centerTitle: true,
        ),
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration:
                      InputDecoration(hintText: 'Enter your first name'),
                  key: ValueKey('firstname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return ('First name needs to be filled');
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Enter your last name'),
                  key: ValueKey('lastname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return ('Last name needs to be filled');
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                    decoration: InputDecoration(hintText: 'Enter your email'),
                    key: ValueKey('email'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return ('Email needs to be filled');
                      } else {
                        return null;
                      }
                    }),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Enter your pasword'),
                  obscureText: true,
                  key: ValueKey('password'),
                  validator: (value) {
                    if (value.toString().length <= 5) {
                      return ('Minimum length of password is 6 characters');
                    } else {
                      return null;
                    }
                  },
                ),
                TextButton(
                    onPressed: () {
                      trysubmit();
                    },
                    child: Text('Submit')),
              ],
            ),
          ),
        ));
  }
}
