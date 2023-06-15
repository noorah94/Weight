import 'package:flutter/material.dart';

import '../globals.dart';

class ResultCard extends StatelessWidget {
  ResultCard({super.key});
  //String name;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Text(
        "${user.getClassification(user.getBMI_range())}",
        style: TextStyle(
            color: Colors.green, fontWeight: FontWeight.bold, fontSize: 18),
      ),
      Text(user.BMI.toStringAsFixed(1),
          style: Theme.of(context).textTheme.displaySmall),
      Center(
          child: Text(
        "${user.getDescription(user.getBMI_range())}",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white,fontSize: 16),
      ))
    ]);
  }
}
