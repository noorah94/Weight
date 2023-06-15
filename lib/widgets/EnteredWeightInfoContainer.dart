import 'package:flutter/material.dart';
import '../globals.dart';
import 'SmallInfoContainer.dart';

class EnteredWeightInfoContainer extends StatefulWidget {
  const EnteredWeightInfoContainer({super.key});

  @override
  State<EnteredWeightInfoContainer> createState() => _EnteredWeightInfoContainerState();
}

class _EnteredWeightInfoContainerState extends State<EnteredWeightInfoContainer> {


  clickedGenderType(name) => setState(() {
        user.changeGender(name);
      });


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(15),
              //heightFactor:33
              //height: 111.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallInfoContainer(
                        title: 'MALE',
                        cardName: genderCard,
                        color: user.isMale
                            ? Colors.white10
                            : Color.fromARGB(8, 255, 255, 255),
                        clickedGenderType: clickedGenderType,
                      ),
                      SmallInfoContainer(
                          title: 'FEMALE',
                          cardName: genderCard,
                          color: user.isFemale
                              ? Colors.white10
                              : Color.fromARGB(8, 255, 255, 255),
                          clickedGenderType: clickedGenderType),
                    ],
                  ),
                  Center(
                    child: SmallInfoContainer(
                        title: 'HEIGHT',
                        cardName: heightCard,
                        color: Colors.white10,
                        clickedGenderType: clickedGenderType),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallInfoContainer(
                          title: 'WEIGHT',
                          cardName: ageWeightCard,
                          color: Colors.white10,
                          clickedGenderType: clickedGenderType),
                      SmallInfoContainer(
                          title: 'AGE',
                          cardName: ageWeightCard,
                          color: Colors.white10,
                          clickedGenderType: clickedGenderType),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
