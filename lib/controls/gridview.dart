import 'package:flutter/material.dart';

class GridViewExample extends StatefulWidget {
  const GridViewExample({super.key});

  @override
  State<GridViewExample> createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  final topics = [
    'Topic1',
    'Topic2',
    'Topic3',
    'Topic4',
    'Topic5',
    'Topic6',
    'Topic7',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
          children: [
            for (final topic in topics)
              Card(
                color: Colors.blue.shade400,
                child: Center(
                  child: Text(topic),
                ),
              )
          ],
        ),
      ),
    );
  }
}
