import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app_training/model/model.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  //int ageCounter = 0;

  @override
  Widget build(BuildContext context) {
    var yourName = context.read<Person>().name ?? "empty";
    var yourAge = context.read<Person>().age.toString();
    return Scaffold(
      appBar: AppBar(
        title: const Text('first page'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/second');
              },
              icon: Icon(Icons.chevron_right))
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Your name :' + ' ' + yourName),
              SizedBox(
                height: 20,
              ),
              Text('Your age :' + ' ' + yourAge),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<Person>().name =
                      Random().nextInt(100).toString();
                  context.read<Person>().age = Random().nextInt(100);
                  setState(() {});
                },
                child: const Text('add'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
