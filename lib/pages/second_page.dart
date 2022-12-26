import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/model.dart';

class SecondSceen extends StatefulWidget {
  const SecondSceen({super.key});

  @override
  State<SecondSceen> createState() => _SecondSceenState();
}

class _SecondSceenState extends State<SecondSceen> {
  @override
  Widget build(BuildContext context) {
    var yourName = context.read<Person>().name ?? "empty";
    var yourAge = context.read<Person>().age.toString();
    return Scaffold(
      appBar: AppBar(
        title: const Text('second page'),
        centerTitle: true,
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
            ],
          ),
        ),
      ),
    );
  }
}
