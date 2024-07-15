import 'package:flutter/material.dart';

class CustomLinearProgressIndicator extends StatelessWidget {
  final double value;

  const CustomLinearProgressIndicator({Key? key, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        LinearProgressIndicator(
          value: value,
          minHeight: 10,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          backgroundColor: Colors.grey[300],
        ),
        Positioned(
          left: (MediaQuery.of(context).size.width - 20) * value - 10,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.red, // Set the color of the circular head
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}

class CircularHeadPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.red // Set the color of the circular head
      ..style = PaintingStyle.fill;

    double circleSize = size.width / 2 + 5; // Set the size of the circular head
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2),
            radius: circleSize),
        Radius.circular(circleSize), // Set the border radius
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(CircularHeadPainter oldDelegate) {
    return false;
  }
}

class ExampleLinearProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomLinearProgressIndicator(
          value: 0.5), // Set the value between 0.0 and 1.0
    );
  }
}
