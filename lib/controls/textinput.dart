import 'package:flutter/material.dart';

class TextboxDemo extends StatefulWidget {
  const TextboxDemo({super.key});

  @override
  State<TextboxDemo> createState() => _TextboxDemoState();
}

class _TextboxDemoState extends State<TextboxDemo> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void setText() {
    setState(() {
      controller.text = 'Hello World';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Text',
                ),
                onChanged: (_) => setState(() {})),
            const SizedBox(height: 20),
            Text('Read : ${controller.text}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: setText,
              child: const Text('Set Text'),
            ),
          ],
        ),
      ),
    );
  }
}
