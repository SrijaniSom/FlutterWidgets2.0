import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({Key? key}) : super(key: key);

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String selectedvalue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop down widget'),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          children: <Widget> [
            Container(
              color: Colors.green,
              padding: EdgeInsets.all(5),
              width:MediaQuery.of(context).size.width,
              height: 80.0,
              child: DropdownButton<String>(items: <String>['Apple','Orange','Grapes','Mango','Litchi']
              .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value));}).toList(),
                  onChanged: (String? newvalue){
                    setState(() {
                    selectedvalue = newvalue!;
                  });
                  },
                  icon: Icon(Icons.arrow_drop_down),
                  dropdownColor: Colors.grey,
                  isExpanded: true,
                  value: selectedvalue,),

             ),
              
            
          ],
        ),
      )
    );
  }
}
