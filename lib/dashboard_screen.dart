import 'package:abcd/screen1.dart';
import 'package:abcd/screen2.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:deivao_drawer/deivao_drawer.dart';
import 'package:deivao_drawer/drawer_controller.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  static const routeName = '/dashboard';
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  bool navBarMode = false;
  static List<Widget> _screens = [
    Screen1(),
    Screen2(),
    Center(child: Text("screen 3")),
    Center(child: Text("screen 4"))
  ];

  Widget build(BuildContext context) {
    final drawerController = DeivaoDrawerController();

    return DeivaoDrawer(
      controller: drawerController,
      drawer: _buildDrawer(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: drawerController.toggle,
          ),
          backgroundColor: Colors.deepOrange[300],
          title: Text("HI USER"),
          actions: [
            IconButton(icon: Icon(Icons.notifications), onPressed: () {})
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.devices, size: 30),
            Icon(Icons.chat_bubble, size: 30),
            Icon(Icons.settings, size: 30),
          ],
          color: Colors.deepOrange[300],
          buttonBackgroundColor: Colors.yellowAccent,
          backgroundColor: Colors.white,
          animationCurve: Curves.linear,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: _screens[_page],
      ),
    );
  }
}

ListView _buildDrawer() {
  return ListView(
    padding: EdgeInsets.all(0),
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(top: 50, bottom: 20),
        color: Colors.deepOrange[300],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ClipOval(
              child: Image.network(
                "https://avatars3.githubusercontent.com/u/16373553?s=460&v=4",
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "in2_mislf",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              "in2_mislf@gmail.com",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      ListTile(leading: Icon(Icons.search), title: Text("option 1")),
    ],
  );
}
