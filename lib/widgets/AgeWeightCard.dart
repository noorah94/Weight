import 'package:flutter/material.dart';
import '../globals.dart';

class AgeWeightCard extends StatefulWidget {
  AgeWeightCard({
    super.key,
    required this.name,
  });
  String name;

  @override
  State<AgeWeightCard> createState() => _AgeWeightCardState();
}

class _AgeWeightCardState extends State<AgeWeightCard> {
  void addTo() => setState(() {
        (widget.name == "AGE") ? user.addToAge() : user.addToWeight();
      });

  void removeFrom() => setState(() {
        (widget.name == "AGE") ? user.removeFromAge() : user.removeFromWeight();
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${widget.name}",
        ),
        Text(widget.name == "AGE" ? "${user.age}" : "${user.weight}",
            style: Theme.of(context).textTheme.displaySmall),
        Row(children: [
          ElevatedButton(
            onPressed: () => removeFrom(),
            child: Icon(Icons.remove),
          ),
          ElevatedButton(
            onPressed: () => addTo(),
            child: Icon(Icons.add),
          ),
        ]),
      ],
    );
  }
}
