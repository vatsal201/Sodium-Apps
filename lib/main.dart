import 'package:flutter/material.dart';
import 'package:sodium/tab1.dart';
import 'package:sodium/tab2.dart';
import 'package:sodium/tab3.dart';
import 'package:sodium/tab4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "sodium",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigationBar(),
    );
  }
}

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: new Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 6,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Sodium Apps",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "\nHello Kumar\t",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ImageIcon(
                        AssetImage("images/hands.png"),
                        color: Color(0xFF3A5A98),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            controller: _controller,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: "Tab 1",
              ),
              Tab(
                text: "Tab 2",
              ),
              Tab(
                text: "Tab 3",
              ),
              Tab(
                text: "Tab 4",
              )
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Tab1(),
          Tab2(),
          Tab3(),
          Tab4(),
        ],
      ),
    );
  }
}
