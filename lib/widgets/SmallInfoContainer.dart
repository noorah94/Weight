import 'package:flutter/material.dart';
import 'package:weight_task_t2/widgets/ResultCard.dart';
import '../globals.dart';
import 'GenderCard.dart';
import 'HeightCard.dart';
import 'AgeWeightCard.dart';

class SmallInfoContainer extends StatelessWidget {
  SmallInfoContainer(
      {super.key,
      required this.title,
      required this.cardName,
      required this.color,
      required this.clickedGenderType});
  String title;
  int cardName;
  Color color;
  final Function clickedGenderType;

  Widget getCardName() {
    switch (cardName) {
      case ageWeightCard:
        return AgeWeightCard(name: title);
      case heightCard:
        return HeightCard(name: title);
      case genderCard:
        return GenderCard(
          name: title,
          clickedGenderType: clickedGenderType,
        );
      default:
        return ResultCard();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: (cardName == heightCard ||cardName == resultCard) ? double.infinity : MediaQuery.of(context).size.width * 0.44,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: getCardName());
  }
}
