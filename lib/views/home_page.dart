import 'package:flutter/material.dart';
import '../widgets/tabs.dart';
import '../widgets/bottomnavbar.dart';
import '../widgets/filters.dart';
import '../widgets/movies_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.cyan.shade100,
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.cyan.shade100,
          foregroundColor: Colors.black,
          elevation: 0,
          title: Text(
            "Canada",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Tabs(),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.red,
              ),
            )
          ],
        ),
        body: TabBarView(
          physics: ClampingScrollPhysics(),
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Filters(),
                  MoviesList(),
                ],
              ),
            ),
            Container(),
            Container(),
          ],
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}

