import 'package:flutter/material.dart';

class ChkBOXDemo extends StatefulWidget {
  const ChkBOXDemo({super.key});

  @override
  State<ChkBOXDemo> createState() => _ChkBOXDemoState();
}

class _ChkBOXDemoState extends State<ChkBOXDemo> {
  bool _isChecked = false;
  void setCheckBox() {
    setState(() {
      _isChecked = !_isChecked;
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
        CheckboxListTile(
          title: const Text('Check me'),
          value: _isChecked,
          onChanged: (v) => setState(() {
            _isChecked = v!;
          }),
        ),
        Text(_isChecked ? 'Checked' : 'Unchecked'),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: setCheckBox,
          child: const Text('Check Box'),
        )
      ],
    )));
  }
}
