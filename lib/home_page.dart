import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // verticalDirection: VerticalDirection.up,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Container(
          // margin: const EdgeInsets.all(50.0),
          height: 300,
          width: 300,
          color: Colors.red,
        ),
        Container(
          height: 300,
          width: 300,
          color: Colors.green,
        ),
      ],
    );
  }
}
