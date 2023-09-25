import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MainActivity());
}

class MainActivity extends StatelessWidget {
  const MainActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity() );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Programing Zone"),
        titleSpacing: 0,
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.notifications_active)

          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(10),
              child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.pinkAccent),
                accountName: Text("Programing Zone") ,
                accountEmail: Text("Dev: MH RONY"),

                currentAccountPicture: Image.network("https://avatars.githubusercontent.com/u/78216965?v=4"),
          ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.home_repair_service_sharp),
              title: Text('Service'),
            ),
            ListTile(
              leading: Icon(Icons.star_rate),
              title: Text('Rate Me'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('About Us'),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.group), label: "Discation"),
          BottomNavigationBarItem(icon: Icon(Icons.code_sharp), label: "All Language"),
          BottomNavigationBarItem(icon: Icon(Icons.manage_accounts_sharp), label: "Profile")
        ],
      ),
    );
  }
}

