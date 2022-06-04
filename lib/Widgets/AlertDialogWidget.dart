import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          _showmyDialog(context);
        },
        child: Text('Show Alert'),
      )),
    );
  }

  Future<void> _showmyDialog(BuildContext context) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert! You need to login first.'),
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)) ,
            content: SingleChildScrollView(
              child: ListBody(children: [
                Text('Login using email'),
                Text('Login using google account'),
              ]),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: (() {
                    Navigator.of(context).pop();
                  }),
                  child: Text('Approve')),
              TextButton(
                  onPressed: (() {
                    Navigator.of(context).pop();
                  }),
                  child: Text('Deny'))
            ],
          );
        });
  }
}
