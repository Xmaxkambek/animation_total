import 'package:flutter/material.dart';

class widget01 extends StatefulWidget {
  const widget01({super.key});

  @override
  State<widget01> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<widget01> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          color: Colors.blueGrey,
          height: 250.0,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topLeft : Alignment.bottomRight,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(
              size: 50.0,
            ),
          ),
        ),
      ),
    );
  }
}
