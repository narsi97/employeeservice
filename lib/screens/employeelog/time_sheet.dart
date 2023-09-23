import 'package:flutter/material.dart';

class TimeSheet extends StatefulWidget {
  const TimeSheet({super.key});

  @override
  State<TimeSheet> createState() => _TimeSheetState();
}

class _TimeSheetState extends State<TimeSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TimeSheet"),
        // automaticallyImplyLeading: false,
        //  Abive Linne Used to Hide The back Button that is Generated Automatically
        //  Below Parameter Used To Display A Physical back Button
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   }, 
        //   icon: const Icon(Icons.arrow_back)),
        ),
    );
  }
}