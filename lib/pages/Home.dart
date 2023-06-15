import 'package:flutter/material.dart';
import 'package:weight_task_t2/pages/Result.dart';
import '../widgets/EnteredWeightInfoContainer.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          EnteredWeightInfoContainer(),
          Expanded(
            child: ListTile(
              title: Text(
                "CALCULATE",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              textColor: Colors.white,
              tileColor: Colors.pinkAccent,
              onTap: () => setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Result()),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
