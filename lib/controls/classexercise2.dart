// Create techfest mobile app with following details
// 1. Create a registration form using
//     radio (department)
//     checkbox(tech , non-tech)
//     event date(date-time picker)
//     participant Name (text field)
//    event name (drop down)
//    fees (slider)
// 2. Create a tab view once user complete registration
//     1. Tab 1 all events (gridview, 2 events per row)
//     2. Tab 2 event 1 details ( scroll event images with description )
//     3. Tab 2 event 2 details ( scroll event images with description )

import 'package:cefg_application/resources/imagestring.dart';
import 'package:flutter/material.dart';

class TexhfestForm extends StatefulWidget {
  const TexhfestForm({super.key});

  @override
  State<TexhfestForm> createState() => _TexhfestFormState();
}

class _TexhfestFormState extends State<TexhfestForm> {
  Widget eventImages() {
    return Center(
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        children: [
          for (final topic in i4)
            Image.asset(topic, height: 300, fit: BoxFit.cover),
        ],
      ),
    );
  }

  Widget Event1Build() {
    return Column(
      children: [
        SizedBox(
          height: 80, // small icons
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: i2.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Image.asset(
                  i2[index],
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
        SizedBox(height: 30),
        Text('Desc'),
      ],
    );
  }

  Widget Event2Build() {
    return Column(
      children: [
        SizedBox(
          height: 80, // small icons
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: i3.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Image.asset(
                  i3[index],
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
        SizedBox(height: 30),
        Text('Desc'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tab Example"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Events'),
              Tab(icon: Icon(Icons.settings), text: 'Event 1'),
              Tab(icon: Icon(Icons.play_arrow), text: 'Event 2'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: eventImages()),
            Center(child: Event1Build()),
            Center(child: Event2Build()),
          ],
        ),
      ),
    );
  }
}
