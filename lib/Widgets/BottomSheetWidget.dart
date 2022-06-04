import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet Widget'),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Click here'),
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.purple[700],
              enableDrag: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      title: Text('Rectangle'),
                      subtitle: Text('Phone'),
                    ),
                    ListTile(
                      title: Text('Ellipse'),
                      subtitle: Text('Earth'),
                    ),
                    ListTile(
                      title: Text('Circle'),
                      subtitle: Text('Sun'),
                    ),
                    ListTile(
                      title: Text('Triangle'),
                      subtitle: Text('Mountain'),
                    ),
                    ListTile(
                      title: Text('Trapezium'),
                      subtitle: Text('Plateau'),
                    ),
                  ],
                );
              });
        },
      )),
    );
  }
}
