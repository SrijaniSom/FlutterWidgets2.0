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
        onPressed: () {},
        child: Text('Show Alert'),
      )),
    );
  }

  Future<void> _showmyDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog();
        });
  }
}
