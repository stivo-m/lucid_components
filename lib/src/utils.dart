import 'package:flutter/material.dart';
import 'package:lucid_components/src/colors.dart';
import 'package:lucid_components/src/enums.dart';

Color getButtonBacgroundColor({required ButtonType buttonType}) {
  switch (buttonType) {
    case ButtonType.PRIMARY:
      return primaryColor;
    case ButtonType.SECONDARY:
      return secondaryColor;

    case ButtonType.PRIMARY_OUTLINE:
      return primaryLightColor;
    case ButtonType.SECONDARY_OUTLINE:
      return primaryLightColor;
    default:
      return primaryColor;
  }
}

Color getButtonBorderColor({required ButtonType buttonType}) {
  switch (buttonType) {
    case ButtonType.PRIMARY_OUTLINE:
      return primaryColor;
    case ButtonType.SECONDARY_OUTLINE:
      return secondaryColor;
    default:
      return Colors.transparent;
  }
}

Color getButtonLoadingIndicatorColor({required ButtonType buttonType}) {
  switch (buttonType) {
    case ButtonType.PRIMARY:
      return primaryLightColor;
    case ButtonType.SECONDARY:
      return primaryLightColor;

    case ButtonType.PRIMARY_OUTLINE:
      return primaryColor;
    case ButtonType.SECONDARY_OUTLINE:
      return secondaryColor;
    default:
      return primaryLightColor;
  }
}


Color getButtonTextColor({required ButtonType buttonType}) {
  switch (buttonType) {
    case ButtonType.PRIMARY:
      return primaryLightColor;
    case ButtonType.SECONDARY:
      return primaryLightColor;

    case ButtonType.PRIMARY_OUTLINE:
      return primaryColor;
    case ButtonType.SECONDARY_OUTLINE:
      return secondaryColor;
    default:
      return primaryLightColor;
  }
}
