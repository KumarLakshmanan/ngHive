import 'package:flutter/material.dart';

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  PageController page = PageController(initialPage: 0);

  int pageIndex = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GSK"),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        elevation: 15.0,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("user"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50.0,
              ),
              accountEmail: Text("dfg@gmail"),
              decoration: BoxDecoration(color: Colors.green),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('message'),
            ),
            Divider(
              height: 0.9,
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('privacy'),
            ),
            Divider(
              height: 0.9,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('settings'),
            ),
            Divider(
              height: 0.9,
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifcation'),
            ),
            Divider(
              height: 0.8,
            ),
          ],
        ),
      ),
      body: PageView(
        children: [
          Container(
            child: ListView(
              padding: EdgeInsets.all(10),
              children: <Widget>[
                for (var i = 0; i < 50; i++)
                  ListTile(
                    leading: IconButton(
                      icon: Icon(
                        Icons.person,
                        color: Colors.green,
                      ),
                      onPressed: () {},
                    ),
                    title: Text("user $i"),
                  ),
              ],
            ),
          ),
          Container(
            child: ListView(
              padding: EdgeInsets.all(10),
              children: <Widget>[
                for (var i = 0; i < 50; i++)
                  ListTile(
                    leading: IconButton(
                      icon: Icon(
                        Icons.contacts,
                        color: Colors.green,
                      ),
                      onPressed: () {},
                    ),
                    title: Text("user $i"),
                  ),
              ],
            ),
          ),
          Container(
              color: Colors.white,
              child: Material(
                child: ListTile(
                  title: Text("info", style: TextStyle(color: Colors.green)),
                  subtitle: Text(
                      "Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia,Web platform, and the web from a single codebase.The first version of Flutter was known by the codename 'Sky' and ran on the Android operating system. It was unveiled at the 2015 Dart developer summit[6] with the stated intent of being able to render consistently at 120 frames per second.[7] During the keynote of Google Developer Days in Shanghai in September 2018, Google announced Flutter Release Preview 2, which is the last big release before Flutter 1.0. On December 4th of that year, Flutter 1.0 was released at the Flutter Live event, denoting the first 'stable'version of the Framework. On December 11, 2019, Flutter 1.12 was released at the Flutter Interactive even"),
                ),
              )),
          Container(
            child: ListView(children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.3),
                child: Icon(
                  Icons.account_circle_rounded,
                  size: 120,
                  color: Colors.grey,
                ),
              ),
              Divider(
                height: 1.2,
              ),
              ListTile(
                title: Text(
                  "Name",
                  style: TextStyle(color: Colors.green),
                ),
                subtitle: Text("user"),
              ),
              Divider(
                height: 1.2,
              ),
              ListTile(
                title: Text(
                  "Bio",
                  style: TextStyle(color: Colors.green),
                ),
                subtitle: Text(" "),
                trailing: Icon(Icons.edit_note_sharp),
              ),
              Divider(
                height: 1.2,
              )
            ]),
          )
        ],
        onPageChanged: (indexPage) {
          setState(() {
            index = indexPage;
          });
        },
        controller: page,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          fixedColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: "Contact",
              icon: Icon(
                Icons.contacts,
              ),
            ),
            BottomNavigationBarItem(
              label: "About",
              icon: Icon(Icons.analytics_rounded),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.account_circle_sharp),
            ),
          ],
          onTap: (current_index) {
            setState(() {
              index = current_index;
              page.animateToPage(index,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.linearToEaseOut);
            });
          },),
    );
  }
}
