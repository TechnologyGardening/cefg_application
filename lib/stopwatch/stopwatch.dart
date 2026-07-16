import 'package:flutter/material.dart';
import 'dart:async';

class StopWatchExample extends StatefulWidget {
  const StopWatchExample({super.key});
  @override
  State<StopWatchExample> createState() => _StopWatchExampleState();
}

class _StopWatchExampleState extends State<StopWatchExample> {
  // int seconds = 0;
  int milliseconds = 0;
  final laps = <int>[];
  late Timer timer;
  bool isRunning = false;

  void _lap() {
    setState(() {
      laps.add(milliseconds);
      milliseconds = 0;
    });
    print(laps);
  }

  void _clear() {
    setState(() {
      laps.clear();
      milliseconds = 0;
    });
  }

  Widget _buildCounter(BuildContext context) {
    return Container(
        color: Theme.of(context).primaryColor,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Lap ${laps.length + 1}',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white),
          ),
          Text(
            _milisToSecond(milliseconds),
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          )
        ]));
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onTick(Timer timer) {
    setState(() {
      if (isRunning) {
        // seconds++;
        milliseconds += 100;
      }
    });
  }

  void _startTimer() {
    timer = Timer.periodic(const Duration(milliseconds: 100), _onTick);
    setState(() {
      // seconds = 0;
      milliseconds = 0;
      isRunning = true;
    });
  }

  String _milisToSecond(milis) {
    final seconds = milis / 1000;
    return '$seconds seconds';
  }

  void _stopTimer() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stopwatch Example'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                _milisToSecond(milliseconds),
                style: const TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                onPressed: isRunning ? null : _startTimer,
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Start'),
              ),
              ElevatedButton(
                onPressed: _lap,
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Lap'),
              ),
              ElevatedButton(
                onPressed: _clear,
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Clear'),
              ),
              ElevatedButton(
                onPressed: isRunning ? _stopTimer : null,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Stop'),
              ),
            ]),
          ],
        ));
  }
}
