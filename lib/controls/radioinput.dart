import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String gender = 'M';

  void setRadioValue() {
    setState(() {
      gender = 'F';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile(
              title: const Text('Male'),
              value: 'M',
              groupValue: gender,
              onChanged: (value) => setState(() => gender = value!),
            ),
            RadioListTile(
              title: const Text('Female'),
              value: 'F',
              groupValue: gender,
              onChanged: (value) => setState(() => gender = value!),
            ),
            const SizedBox(height: 20),
            Text('Selected Gender: $gender'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: setRadioValue,
              child: const Text('Set Gender'),
            )
          ],
        ),
      ),
    );
  }
}
