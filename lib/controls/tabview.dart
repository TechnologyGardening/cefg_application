import 'package:flutter/material.dart';

class TabExample extends StatefulWidget {
  const TabExample({super.key});

  @override
  State<TabExample> createState() => _TabExampleState();
}

class _TabExampleState extends State<TabExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tab Example"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
              Tab(icon: Icon(Icons.play_arrow), text: 'Play'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Home')),
            Center(child: Text('Settings')),
            Center(child: Text('Play')),
          ],
        ),
      ),
    );
  }
}
