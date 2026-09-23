import 'package:flutter/material.dart';
import 'package:cefg_application/resources/imagestring.dart';

class ScrollImageDisp extends StatefulWidget {
  const ScrollImageDisp({super.key});

  @override
  State<ScrollImageDisp> createState() => _ScrollImageDispState();
}

class _ScrollImageDispState extends State<ScrollImageDisp> {
  Widget ScrollDisp() {
    return SizedBox(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScrollDisp(),
      ),
    );
  }
}
