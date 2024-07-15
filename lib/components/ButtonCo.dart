import 'package:flutter/material.dart';
import 'package:themeflutter/theme/MyAppColors.dart';

class UpwardArrowButton extends StatefulWidget {
  final IconData icon;
  final double height;

  const UpwardArrowButton({
    Key? key,
    this.icon = Icons.arrow_upward,
    this.height = 44.0,
  }) : super(key: key);

  @override
  _UpwardArrowButtonState createState() => _UpwardArrowButtonState();
}

class _UpwardArrowButtonState extends State<UpwardArrowButton> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.height,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _isClicked = true;
          });
          Future.delayed(Duration(milliseconds: 200), () {
            setState(() {
              _isClicked = false;
            });
          });
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: CircleBorder(),
          backgroundColor:
              _isClicked ? MyAppColors.lightGray : Color(0xFF707070),
        ),
        child: Center(
          child: Icon(
            widget.icon,
            color: _isClicked
                ? Theme.of(context).colorScheme.onSurface
                : Colors.white,
            size: 20.0,
          ),
        ),
      ),
    );
  }
}
