import 'package:flutter/material.dart';
import '../globals.dart';


class HeightCard extends StatefulWidget {
  HeightCard({super.key, required this.name});
  String name;

  @override
  State<HeightCard> createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("HEIGHT"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment : CrossAxisAlignment.end,
         
          children: [
            Text("${user.height}",
                style: Theme.of(context).textTheme.displaySmall),
                 Text("cm",style: TextStyle(color: Colors.white ,),),
        
          ],
        ),
        
        Slider(
          min: 10,
          max: 250,
          value: user.height.toDouble(),
          onChanged: (value) {
            setState(() {
              user.height = value.round();
            });
          },
        )
      ],
    );
  }
}
