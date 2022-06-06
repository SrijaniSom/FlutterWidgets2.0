import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
        centerTitle: true,
      ),
      body:Center(
        child: Container(
          child:Stack(
            children: [
              Center(
                child: Container(color: Colors.red,height: 300,width: 300,),
              ),
              Center(
                child: Container(color: Colors.green,height: 200,width: 200,),
              ),
              Center(
                child: Container(color: Colors.yellow,height: 50,width: 50,),
              ),
            ],
          ) ,),
      )
    );
  }
}
