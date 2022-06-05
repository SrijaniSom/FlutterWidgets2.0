import 'package:flutter/material.dart';
import 'package:widget_tutorial/Widgets/AlertDialogWidget.dart';
import 'package:widget_tutorial/Widgets/AnimatedTextWidget.dart';
import 'package:widget_tutorial/Widgets/BottomSheetWidget.dart';
import 'package:widget_tutorial/Widgets/DrawerWidget.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int selectedindex = 0;
  PageController pageController = PageController();
  void onTapping(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView(controller: pageController,
      children: [AlertDialogWidget(),AnimatedTextWidget(),BottomSheetWidget(),DrawerWidget()],),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Buy'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        onTap: onTapping,
      ),
    );
  }
}
