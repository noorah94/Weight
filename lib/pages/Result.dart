import 'package:flutter/material.dart';
import 'package:weight_task_t2/widgets/SmallInfoContainer.dart';

import '../globals.dart';

class Result extends StatelessWidget {
  Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsetsDirectional.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Your Result",
                textDirection: TextDirection.ltr,
                style: Theme.of(context).textTheme.displaySmall),
            Expanded(
              flex: 7,
              child: Container(
                height: 600,
                padding: EdgeInsets.all(15),
                child: SmallInfoContainer(
                    cardName: resultCard,
                    title: 'ResultCard',
                    color: Colors.white10,
                    clickedGenderType: () {}),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text(
                  "RE-CALCULATE",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                textColor: Colors.white,
                tileColor: Colors.pinkAccent,
                onTap: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
