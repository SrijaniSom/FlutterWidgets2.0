import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Whatsapp'),
          centerTitle: true,
          bottom: TabBar(indicatorColor: Colors.green[900], tabs: [
            Tab(
              icon: Icon(Icons.chat),
              text: 'Chat',
            ),
            Tab(
              icon: Icon(Icons.chat_bubble),
              text: 'Status',
            ),
            Tab(
              icon: Icon(Icons.call),
              text: 'Calls',
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: Center(
                child: Text(
              'Chats',
              style: TextStyle(
                  fontSize: 25.0, letterSpacing: 1.4, color: Colors.green[900],fontWeight: FontWeight.bold),
            )),
          ),
          Container(
            child: Center(
                child: Text(
              'Status',
              style: TextStyle(
                  fontSize: 25.0, letterSpacing: 1.4, color: Colors.green[900]),
            )),
          ),
          Container(
            child: Center(
                child: Text(
              'Calls',
              style: TextStyle(
                  fontSize: 25.0, letterSpacing: 1.4, color: Colors.green[900]),
            )),
          )
        ]),
      ),
      initialIndex: 0,
    );
  }
}
