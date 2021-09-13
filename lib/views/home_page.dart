import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          elevation: 0,
          title: Text("India"),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                tabs: [
                  Tab(
                    text: "New",
                  ),
                  Tab(
                    text: "Popular",
                  ),
                  Tab(
                    text: "Upcoming",
                  ),
                ],
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: TabBarView(
          children: [
            Container(),
            Container(),
            Container(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "",
          )
        ]),
      ),
    );
  }
}
