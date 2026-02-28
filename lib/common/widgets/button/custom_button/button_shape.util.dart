import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import 'button_shape.type.dart';

class ButtonShapeUtil {
  ButtonShapeUtil._();

  static RoundedRectangleBorder getButtonShape(ButtonShapeType type) {
    switch (type) {
      case ButtonShapeType.rounded:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
        );
      case ButtonShapeType.circular:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusXl),
        );
      default:
        return RoundedRectangleBorder(borderRadius: BorderRadius.circular(0));
    }
  }
}
