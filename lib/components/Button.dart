import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonCo extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double elevation;
  final EdgeInsets padding;
  final double width;

  const ButtonCo({
    Key? key,
    required this.label,
    required this.onPressed,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
    this.elevation = 4.0,
    this.padding = const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
    required this.width,
  }) : super(key: key);

  @override
  State<ButtonCo> createState() => _ButtonCoState();
}

class _ButtonCoState extends State<ButtonCo> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.backgroundColor,
        foregroundColor: widget.textColor,
        elevation: widget.elevation,
        padding: widget.padding,
        minimumSize: Size(widget.width, 0), // Set the minimum width
      ),
      child: Text(widget.label),
    );
  }
}
