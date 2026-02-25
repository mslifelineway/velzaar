import 'package:flutter/material.dart';

import '../../../utils/device/device.utility.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: DeviceUtils.getScreenWidth(), // now SAFE
      child: ElevatedButton(onPressed: onPressed, child: child),
    );
  }
}
