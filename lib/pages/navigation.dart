import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glocapp/pages/BudgetScreen.dart';

class Navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new NavigationState();
  }
}

class NavigationState extends State<Navigation> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Glocapp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: new Icon(Icons.camera_alt), text: "WEB"),
            Tab(text: "PRESUPUESTO", icon: new Icon(Icons.camera_alt)),
            Tab(text: "CHAT", icon: new Icon(Icons.camera_alt)),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          BudgetScreen(),
          BudgetScreen(),
          BudgetScreen()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message),
        onPressed: () => print("open chats"),
      ),
    );
  }
}
