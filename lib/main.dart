import 'package:cefg_application/calculatorlayout/cal_layout.dart';
import 'package:cefg_application/controls/calendarExample.dart';
import 'package:cefg_application/controls/chkbox.dart';
import 'package:cefg_application/controls/exercise1.dart';
import 'package:cefg_application/controls/gridview.dart';
import 'package:cefg_application/controls/imagesdisp.dart';
import 'package:cefg_application/controls/scrollviewimage.dart';
import 'package:cefg_application/controls/radioinput.dart';
import 'package:cefg_application/controls/sliderExample.dart';
import 'package:cefg_application/controls/tabview.dart';
import 'package:cefg_application/controls/textinput.dart';
import 'package:cefg_application/inputcontrols/inputtextcontrol.dart';
import 'package:cefg_application/stopwatch/login.dart';
import 'package:cefg_application/stopwatch/stopwatch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const StopwatchRun());
}

class StopwatchRun extends StatelessWidget {
  const StopwatchRun({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabExample(),
    );
  }
}
