import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var data = [
    "jan@gmail.com",
    "0300XXXXXXX",
    "Languages users speak",
    "Edit information",
    "Log out from your account"
  ];
  var icons = [
    Icon(Icons.location_city_outlined),
    Icon(Icons.phone_outlined),
    Icon(Icons.language_outlined),
    Icon(Icons.edit_outlined),
    Icon(Icons.login_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Profile"),
          toolbarHeight: MediaQuery.of(context).size.height / 3,
          backgroundColor: Colors.cyan.shade900,
          centerTitle: true,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100.0),
                  bottomRight: Radius.circular((100.0))))),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(75.0),
              child: Container(
                color: Colors.blue.shade100,
                child: ListTile(
                  title: Text(data[index]),
                  leading: icons[index],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0)),
        child: BottomNavigationBar(
          backgroundColor: Colors.cyan.shade900,
          showSelectedLabels: true,
          selectedItemColor: Colors.cyan.shade800,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              backgroundColor: Colors.cyan.shade900,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
              backgroundColor: Colors.cyan.shade900,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
              backgroundColor: Colors.cyan.shade900,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: '',
              backgroundColor: Colors.cyan.shade900,
            ),
          ],
        ),
      ),
    );
  }
}
