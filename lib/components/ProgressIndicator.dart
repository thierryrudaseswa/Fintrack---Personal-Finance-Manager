import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ExampleStepProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        StepProgressIndicator(
          totalSteps: 10,
          customColor: (index) {
            if (index % 2 == 0) {
              return Colors.green;
            } else {
              return Colors.black;
            }
          },
          padding: 6.0,
        ),
      ],
    );
  }
}
