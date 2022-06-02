import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer widget'),
        centerTitle: true,
        backgroundColor: Colors.purple[700],
      ),
      drawer: Drawer(
        backgroundColor: Colors.purple,
        child: Container(
          padding: EdgeInsets.all(8),
          child: ListView(
            children: [
              DrawerHeader(
                child: Container(
                    child: Row(
                  children:[
                     CircleAvatar(
                        radius: 40,
                        foregroundImage: NetworkImage('https://helios-i.mashable.com/imagery/articles/05XzQ4qN4Refr4k4O1luvgK/images-2.fit_lim.size_2000x.v1611684942.jpg'),
                        backgroundImage: NetworkImage(
                            'https://helios-i.mashable.com/imagery/articles/05XzQ4qN4Refr4k4O1luvgK/images-2.fit_lim.size_2000x.v1611684942.jpg')),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fox Mulder',
                          style: TextStyle(
                            fontSize: 15.0,
                            letterSpacing: 1.5,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'mulderfox@gmail.com',
                          style: TextStyle(
                            fontSize: 15.0,
                            letterSpacing: 1.2,
                          ),
                        )
                      ],
                    )
                  ],
                )),
                padding: EdgeInsets.zero,
              ),
              ListTile(
                leading: Icon(Icons.file_copy),
                title: Text('Files'),
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('Shared with me'),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Trash'),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Starred'),
              ),
              Divider(
                height: 15.0,
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text('Uploads'),
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text('Sent files'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
