import 'package:flutter/material.dart';
import 'package:widget_tutorial/Widgets/AlertDialogWidget.dart';
import 'Widgets/DrawerWidget.dart';
import 'Widgets/AlertDialogWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.purple,
      ),
      title: 'Flutter 30 Widgets',
      debugShowCheckedModeBanner: false,
      home: AlertDialogWidget(),
    );
  }
}
