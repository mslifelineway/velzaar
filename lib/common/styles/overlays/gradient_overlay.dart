import 'package:flutter/material.dart';

const List<Color> defaultColors = [
  Color.fromARGB(51, 0, 0, 0),
  Color.fromARGB(179, 0, 0, 0),
];

class GradientOverlay extends StatelessWidget {
  final AlignmentGeometry? begin, end;
  final List<Color>? colors;

  const GradientOverlay({
    super.key,
    this.begin = Alignment.topCenter,
    this.end = Alignment.bottomCenter,
    this.colors = defaultColors,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: begin!, end: end!, colors: colors!),
      ),
    );
  }
}
