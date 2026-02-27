import 'package:flutter/material.dart';

import '../../../../common/widgets/cards/image_card.dart';

class TodaysSpecialCard extends StatelessWidget {
  final Map<String, dynamic> item;

  const TodaysSpecialCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ImageCard(
      image: item['image'],
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [Colors.black.withValues(alpha: 0.5), Colors.transparent],
          ),
        ),
        padding: const EdgeInsets.all(16),
        alignment: Alignment.bottomLeft,
        child: Text(
          item['name'],
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
