import 'package:flutter/material.dart';

class CalendarExample extends StatefulWidget {
  const CalendarExample({super.key});

  @override
  State<CalendarExample> createState() => _CalendarExampleState();
}

class _CalendarExampleState extends State<CalendarExample> {
  DateTime? data;
  Future<void> pickDate() async {
    final pickedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      initialDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (!mounted || pickedDate == null) return;
    setState(() => data = pickedDate);
  }

  void setCalenderValue() {
    setState(() {
      data = DateTime(2027, 10, 4);
    });
  }

  @override
  Widget build(BuildContext context) {
    final text = data == null
        ? 'No date selected'
        : 'Selected date: ${data!.day}/${data!.month}/${data!.year}';

    return Scaffold(
        body: SafeArea(
      child: Center(
          child: Column(children: [
        Text(text),
        ElevatedButton(
          onPressed: pickDate,
          child: const Text('Pick a date'),
        ),
        ElevatedButton(
          onPressed: setCalenderValue,
          child: const Text('Set Date'),
        )
      ])),
    ));
  }
}
