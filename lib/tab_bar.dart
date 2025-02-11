import 'package:flutter/material.dart';

void main() {
  runApp(TabBarPage());
}

class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(indicatorColor: Colors.amber[900], tabs: [
      Tab(
        icon: Icon(Icons.comment),
        text: "Pesan",
      ),
      Tab(
        icon: Icon(Icons.call),
        text: "Panggilan",
      ),
    ]);

    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
                title: Text(
                  "Tab Bar",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.blue,
                bottom: PreferredSize(
                    preferredSize:
                        Size.fromHeight(myTabBar.preferredSize.height),
                    child: Container(color: Colors.amber, child: myTabBar))),
            body: TabBarView(children: [
              Center(
                child: Text("Tab Pesan"),
              ),
              Center(
                child: Text("Tab Panggilan"),
              ),
            ]),
          )),
    );
  }
}
