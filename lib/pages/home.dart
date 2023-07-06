import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // actions: [
          //   IconButton(
          //     onPressed: () {
          //       Navigator.pushNamedAndRemoveUntil(context, "/page1", (route) => false);
          //     }, 
          //     icon: Icon(Icons.account_balance_sharp),
          //   ),
          //   IconButton(
          //     onPressed: () {
          //       Navigator.pushNamedAndRemoveUntil(context, "/page2", (route) => false);
          //     }, 
          //     icon: Icon(Icons.add_home_work_sharp),
          //   ),
          //   IconButton(
          //     onPressed: () {
          //       Navigator.pushNamedAndRemoveUntil(context, "/page3", (route) => false);
          //     }, 
          //     icon: Icon(Icons.add_reaction_outlined),
          //   ),
          //   IconButton(
          //     onPressed: () {
          //       Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
          //     }, 
          //     icon: Icon(Icons.account_circle),
          //   ),
          // ],
          title: InkWell(
            child: Text("My App"),
            onTap: () {
              //Navigator.pushNamed(context, '/home');
              Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
            },
          ),
        ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              accountName: Text(
                "Ruhul Amin",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "ruhulamin@gmail.com",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text("Dashboard"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle_outlined),
              title: const Text("Your Account"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const AboutListTile(
              icon: Icon(Icons.abc_outlined),
              child: Text("About Us"),
              applicationIcon: Icon(Icons.local_play),
              applicationName: 'My First Flutter Application',
              applicationVersion: '1.0.1',
              applicationLegalese: '© 2023 bit',
              aboutBoxChildren: [
                //Content goes here...
              ],
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => false);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "This is end drawer",
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Close Drawer",
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.email),
        onPressed: () {
          //MySnackBar("Floating Action Button", context);
        },
      ),
      body: ListView(
            children: const [
              ListTile(
                title: Text("List Tile 1"),
                subtitle: Text("ListTile practice with Tamal.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("List Tile 2"),
                subtitle: Text("ListTile practice with Tamal.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("List Tile 3"),
                subtitle: Text("ListTile practice with Tamal.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("List Tile 4"),
                subtitle: Text("ListTile practice with Tamal.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
                            ListTile(
                title: Text("List Tile 5"),
                subtitle: Text("ListTile practice with Tamal.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("List Tile 6"),
                subtitle: Text("ListTile practice with Tamal.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("List Tile 7"),
                subtitle: Text("ListTile practice with Tamal.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("List Tile 8"),
                subtitle: Text("ListTile practice with Tamal.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
                            ListTile(
                title: Text("List Tile 9"),
                subtitle: Text("ListTile practice with Tamal.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("List Tile 10"),
                subtitle: Text("ListTile practice with Tamal.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("List Tile 11"),
                subtitle: Text("ListTile practice with Tamal.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("List Tile 12"),
                subtitle: Text("ListTile practice with Tamal.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
            ],
          ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/page1', (route) => false);
              }, 
              icon: Icon(Icons.access_alarm)
            ),
            IconButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/page2', (route) => false);
              }, 
              icon: Icon(Icons.pages)
            ),
            IconButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/page3', (route) => false);
              }, 
              icon: Icon(Icons.people)
            ),
            IconButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
              }, 
              icon: Icon(Icons.home)
            ),
          ],
        ),
      ),
    );
  }
}