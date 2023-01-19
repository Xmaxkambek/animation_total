import 'package:flutter/material.dart';

class widget06 extends StatefulWidget {
  const widget06({super.key});

  @override
  State<widget06> createState() => _widget06State();
}

class _widget06State extends State<widget06> {
  double padValue = 0.0;
  bool _first = true;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: _color),
          onPressed: () {
            setState(() {
              padValue = padValue == 0.0 ? 100.0 : 0.0;
              _color = _first ? Colors.blue : Colors.red;
              _first = !_first;
            });
          },
          child: Text('Change padding'),
        ),
        Text('Padding = $padValue'),
        AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 2),
          curve: Curves.easeOut,
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 6,
            color: _color,
          ),
        ),
      ],
    );
  }
}
