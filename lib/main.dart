import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One More To Do App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 9, 35, 1),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(87, 129, 234, 1),
        child: Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Stack(
            children: [
              Transform.rotate(
                angle: -0.03,
                child: Container(
                  height: 20,
                  margin: EdgeInsets.only(top: 10, left: 15, right: 50),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(78, 85, 101, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  alignment: Alignment.topCenter,
                  child: Text(''),
                ),
              ),
              Transform.rotate(
                angle: -0.02,
                child: Container(
                  margin: EdgeInsets.only(top: 16, left: 15, right: 30),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(49, 57, 76, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  alignment: Alignment.topCenter,
                  child: Text(''),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(38, 46, 64, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 25, left: 15, right: 15),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Row(
                        children: [
                          Text('Reminders',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 32)),
                          Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: Text('EDIT'),
                            style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all<Size>(
                                    Size(60, 20)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromRGBO(238, 129, 102, 1)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white)),
                          )
                        ],
                      ),
                    ),
                    Divider(height: 10),
                    SingleTile(
                        title: 'Change Book Cover',
                        subtitle: 'Change book cover by closing the book again',
                        checked: false),
                    SingleTile(
                        title: 'Move to another position',
                        subtitle:
                            'Move to another position by tapping in some great ideas',
                        checked: false),
                    SingleTile(
                        title: 'Save an item',
                        subtitle:
                            'Save an item by closing this app and reopening again.',
                        checked: false),
                    SingleTile(
                        title: 'Complete an item',
                        subtitle:
                            'Change the status of item by completing this situation',
                        checked: true),
                    SingleTile(
                        title: 'Adding a new item',
                        subtitle:
                            'Adding a new item is easy as swiping down a list',
                        checked: true),
                    Divider(
                      height: 10,
                      thickness: 0,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SingleTile extends StatelessWidget {
  const SingleTile({Key key, this.title, this.subtitle, this.checked})
      : super(key: key);

  final String title;
  final String subtitle;
  final bool checked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.only(left: 0, right: 10),
      leading: Radio(
        value: 1,
        groupValue: checked ? 1 : 2,
      ),
      horizontalTitleGap: 0,
      minVerticalPadding: 10,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(title, style: TextStyle(fontSize: 18, color: Colors.white)),
      ),
      subtitle: Text(subtitle,
          style: TextStyle(fontSize: 14, color: Colors.grey.shade400)),
      trailing: Icon(
        checked ? Icons.bookmark : Icons.bookmark_outline,
        color: Colors.blue.shade900,
      ),
    );
  }
}
