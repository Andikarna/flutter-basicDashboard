// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, unnecessary_new
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.green[800],
      ),
      backgroundColor: Colors.green[50],
      drawer: new Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: new Text(
                "Andikarna",
                style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              accountEmail: Text("karnaandi00@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
              decoration: BoxDecoration(color: Colors.green[800]),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: Text("Ubah Password"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Tentang"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Keluar"),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: GridView.count(crossAxisCount: 2, children: [
          MyMenu(
            title: "Akademik",
            icon: Icons.account_balance,
            color: Colors.blueGrey,
          ),
          MyMenu(
            title: "Informasi",
            icon: Icons.info,
            color: Colors.blue,
          ),
          MyMenu(
            title: "Mata Kuliah",
            icon: Icons.school,
            color: Colors.amber,
          ),
          MyMenu(
            title: "Dosen",
            icon: Icons.person_pin,
            color: Colors.brown,
          ),
          MyMenu(
            title: "Moduls",
            icon: Icons.local_library,
            color: Colors.red,
          ),
          MyMenu(
            title: "Trnaskip Nilai",
            icon: Icons.book,
            color: Colors.teal,
          ),
        ]),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({required this.title, required this.icon, required this.color});

  final String title;
  final IconData icon;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: InkWell(
        onTap: (() {}),
        splashColor: Colors.green,
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 70.0,
              color: color,
            ),
            Text(
              title,
              style: new TextStyle(fontSize: 17.0),
            )
          ],
        )),
      ),
    );
  }
}
