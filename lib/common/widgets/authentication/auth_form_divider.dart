import 'package:flutter/material.dart';

class AuthFormDivider extends StatelessWidget {
  const AuthFormDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(indent: 60, endIndent: 8, thickness: 0.5)),
        Text(dividerText, style: Theme.of(context).textTheme.bodySmall),
        Expanded(child: Divider(indent: 8, endIndent: 60, thickness: 0.5)),
      ],
    );
  }
}
