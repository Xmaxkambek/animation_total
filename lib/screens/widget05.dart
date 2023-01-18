import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class widget05 extends StatefulWidget {
  const widget05({super.key});

  @override
  State<widget05> createState() => _widget05State();
}

class _widget05State extends State<widget05> {
  bool _first = true;
  double _fontsize = 30;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 120,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            style: TextStyle(
              fontSize: _fontsize,
              color: _color,
              fontWeight: FontWeight.bold,
            ),
            child: const Text('Flutter'),
          ),
        ),
        TextButton(
            onPressed: () {
              setState(() {
                _fontsize = _first ? 90 : 60;
                _color = _first ? Colors.blue : Colors.red;
                _first = !_first;
              });
            },
            child: Text('switch'))
      ],
    );
  }
}
