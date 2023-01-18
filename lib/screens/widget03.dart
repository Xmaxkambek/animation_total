import 'package:flutter/material.dart';

class widget03 extends StatefulWidget {
  const widget03({super.key});

  @override
  State<widget03> createState() => _widget03State();
}

class _widget03State extends State<widget03> {
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
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          height: selected ? 100.0 : 200.0,
          color: selected ? Colors.blueGrey : Colors.grey,
          alignment: selected ? Alignment.center : Alignment.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(
            size: 100,
          ),
        ),
      ),
    );
  }
}
