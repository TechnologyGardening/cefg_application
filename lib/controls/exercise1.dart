import 'package:flutter/material.dart';

class ClassExercise1 extends StatefulWidget {
  const ClassExercise1({super.key});

  @override
  State<ClassExercise1> createState() => _ClassExercise1State();
}

class _ClassExercise1State extends State<ClassExercise1> {
  String Name = '';
  final namecont = TextEditingController();
  final emailController = TextEditingController();
  final globalKey = GlobalKey<FormState>();

  @override
  void dispose() {
    namecont.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: globalKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                    validator: (value) => value!.isEmpty ? "Enter Name" : null,
                    controller: namecont,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    )),
                const SizedBox(height: 20),
                TextFormField(
                    validator: (text) {
                      if (text!.isEmpty) {
                        return 'Email address cannot be empty';
                      }
                      final regex = RegExp('[^@]+@[^.]+..+');
                      if (!regex.hasMatch(text)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                    ))
              ],
            )));
  }
}
