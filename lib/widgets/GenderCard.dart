import 'package:flutter/material.dart';

class GenderCard extends StatefulWidget {
  final Function clickedGenderType;
  GenderCard({super.key, required this.name, required this.clickedGenderType});
  String name;

  @override
  State<GenderCard> createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {
  @override
  Widget build(BuildContext context) {
    String name = widget.name;

    return Column(
        //mainAxisSize : MainAxisSize.max,
        //crossAxisAlignment : CrossAxisAlignment.,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => widget.clickedGenderType(name),
            icon: name == "MALE" ? Icon(Icons.male) : Icon(Icons.female),
            iconSize: 100,
          ),
          Text(name)
        ]);
  }
}
