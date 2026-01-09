import 'package:flutter/material.dart';
import 'package:gambel/Screeens/Home_screen.dart';
import 'package:gambel/Screeens/foryou_screen.dart';
import 'package:gambel/Screeens/latest_screen.dart';
import 'package:gambel/Screeens/online_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[200],
          title: Text("Gambel"),
          actions: [Icon(Icons.search,color: Colors.yellow,)],

          bottom: TabBar(
            //labelColor: Colors.greenAccent,
            automaticIndicatorColorAdjustment: false,
            tabs: [
              Tab(child: Text("For You"),),
              Tab(child: Text("Online"),),
              Tab(child: Text("Latest"),)
            ],
          ),
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red[200],
                ),
                accountEmail: Text("Rehmanimtiaz.dev@gmail.com"),
                accountName: Text("Rehman Imtiaz"),
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                ),
              ),

              ListTile(
                leading: Icon(Icons.person),
                title: Text("My Profile"),
              ),
              Divider(),

              ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text("Schedule"),
              ),
              Divider(),

              ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text("My Session"),
              ),
              Divider(),

              ListTile(
                leading: Icon(Icons.inbox),
                title: Text("Inbox"),
              ),
              Divider(),

              ListTile(
                leading: Icon(Icons.wallet),
                title: Text("Wallet"),
              ),
              Divider(),

              ListTile(
                leading: Icon(Icons.history),
                title: Text("Check Status"),
              ),
              Divider(),

              ListTile(
                leading: Icon(Icons.payments),
                title: Text("Payments"),
              ),
              Divider(),

              ListTile(
                leading: Icon(Icons.people_alt_outlined),
                title: Text("Opportunities"),
              ),
              Divider(),

              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
              Divider(),

              ListTile(
                leading: Icon(Icons.logout, color: Colors.red),
                title: Text("Logout"),
              ),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            ForyouScreen(),
            OnlineScreen(),
            LatestScreen(),
          ],
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          foregroundColor: Colors.yellow,
          mini: true,
          onPressed: () { },
          child: Icon(Icons.add_circle_outline),
        ),

        bottomNavigationBar: BottomNavigationBar(
           backgroundColor: Colors.red[200],
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.inbox),label: "Inbox")
          ],
        ),
      ),
    );
  }
}
