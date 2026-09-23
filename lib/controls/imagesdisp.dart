import 'package:flutter/material.dart';
import 'package:cefg_application/resources/imagestring.dart';

class ImageDisp extends StatefulWidget {
  const ImageDisp({super.key});

  @override
  State<ImageDisp> createState() => _ImageDispState();
}

class _ImageDispState extends State<ImageDisp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset(i1),
    ));
  }
}
