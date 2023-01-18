import 'package:flutter/material.dart';

class widget04 extends StatefulWidget {
  const widget04({super.key});

  @override
  State<widget04> createState() => _widget04State();
}

class _widget04State extends State<widget04> {
  bool _bool = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          width: double.infinity,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _bool = !_bool;
            });
          },
          child: Text(
            'switch',
            style: TextStyle(color: Colors.black),
          ),
        ),
        AnimatedCrossFade(
          firstChild: Image.asset(
            'img/a1.png',
            width: double.infinity,
          ),
          secondChild: Image.asset(
            'img/a2.png',
            width: double.infinity,
          ),
          crossFadeState:
              _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 2),
        ),
      ],
    );
  }
}
