import 'package:flutter/material.dart';
import 'widgets/takeaway_form.dart';

class TakeawayScreen extends StatelessWidget {
  const TakeawayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Takeaway Order")),
      body: const Padding(padding: EdgeInsets.all(20), child: TakeawayForm()),
    );
  }
}
