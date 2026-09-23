import 'package:flutter/material.dart';

class ControlInput extends StatefulWidget {
  const ControlInput({super.key});

  @override
  State<ControlInput> createState() => _ControlInputState();
}

class _ControlInputState extends State<ControlInput> {
  final textCOntroller = TextEditingController();
  @override
  void dispose() {
    textCOntroller.dispose();
    super.dispose();
  }

  void setTextValue() {
    setState(() {
      textCOntroller.text = 'Hello World';
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
            TextField(
              controller: textCOntroller,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 20),
            Text('Read : ${textCOntroller.text}'),
            ElevatedButton(
              onPressed: setTextValue,
              child: const Text('Set Text'),
            )
          ],
        ),
      ),
    );
  }
}
