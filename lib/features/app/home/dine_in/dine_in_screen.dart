import 'package:flutter/material.dart';
import 'widgets/reservation_form.dart';

class DineInScreen extends StatelessWidget {
  const DineInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dine-In Reservation")),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: ReservationForm(),
      ),
    );
  }
}
