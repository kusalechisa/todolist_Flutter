import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        width: 200,
        backgroundColor: Color.fromARGB(255, 197, 241, 4),
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
              Icons.favorite,
              size: 40,
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pushNamed(context, "/homepage");
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  Navigator.pushNamed(context, "/settingspage");
                })
          ],
        ),
      ),
    );
  }
}
