import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double val = 30;
  void setSliderValue(double v) {
    setState(() {
      val = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Slider(
          value: val,
          min: 0,
          max: 100,
          divisions: 100,
          onChanged: (v) => setState(() => val = v),
        ),
        Text('Read : ${val.round()}'),
        ElevatedButton(
          onPressed: () => setSliderValue(20),
          child: const Text('Reset'),
        )
      ],
    )));
  }
}
