import 'dart:async';

import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget {
  const MyAnimation({Key? key, required this.size}) : super(key: key);

  final double size;

  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> {
  Timer? _timer;
  int _alpha = 0;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(milliseconds: 5), _update);
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _update(Timer timer) {
    setState(() {
      _alpha++;
      if (_alpha > 255) _alpha = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(widget.size / 4),
      child: Container(
        width: widget.size,
        height: widget.size,
        color: Colors.red.withAlpha(_alpha),
      ),
    );
  }
}
