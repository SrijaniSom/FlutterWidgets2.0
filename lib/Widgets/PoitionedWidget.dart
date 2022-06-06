import 'package:flutter/material.dart';

class PositionedWidget extends StatelessWidget {
  const PositionedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positioned Widget'),
        centerTitle: true,
      ),
      body:Center(
        child: Container(
          child:Stack(
            children: [
              Positioned(
                top: 30,
                left:20,
                child: Container(color: Colors.red,height: 300,width: 300,),
              ),
              Center(
                child: Container(color: Colors.green,height: 200,width: 200,),
              ),
              Positioned(
                top:400,
                left:310,
                child: Container(color: Colors.yellow,height: 50,width: 50,),
              ),
            ],
          ) ,),
      )
    );
  }
}
