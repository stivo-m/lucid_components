import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lucid_components/src/colors.dart';
import 'package:lucid_components/src/enums.dart';
import 'package:lucid_components/src/utils.dart';

void main() {
  group('Utils', () {
    group('getButtonBacgroundColor', () {
      test('should return default primary color', () {
        final Color result = getButtonBacgroundColor(
          buttonType: ButtonType.PRIMARY,
        );

        expect(result, primaryColor);
      });

      test('should return default secondary color', () {
        final Color result = getButtonBacgroundColor(
          buttonType: ButtonType.SECONDARY,
        );

        expect(result, secondaryColor);
      });

      test('should return default white color for primary outline button', () {
        final Color result = getButtonBacgroundColor(
          buttonType: ButtonType.PRIMARY_OUTLINE,
        );

        expect(result, primaryLightColor);
      });

      test('should return default white color for secondary outline button',
          () {
        final Color result = getButtonBacgroundColor(
          buttonType: ButtonType.SECONDARY_OUTLINE,
        );

        expect(result, primaryLightColor);
      });
    });

    group('getButtonLoadingIndicatorColor', () {
      test('should return default white color', () {
        final Color result = getButtonLoadingIndicatorColor(
          buttonType: ButtonType.PRIMARY,
        );

        expect(result, primaryLightColor);
      });

      test('should return default white color for secondary button', () {
        final Color result = getButtonLoadingIndicatorColor(
          buttonType: ButtonType.SECONDARY,
        );

        expect(result, primaryLightColor);
      });

      test('should return default primary color for primary outline button',
          () {
        final Color result = getButtonLoadingIndicatorColor(
          buttonType: ButtonType.PRIMARY_OUTLINE,
        );

        expect(result, primaryColor);
      });

      test('should return default secondary color for secondary outline button',
          () {
        final Color result = getButtonLoadingIndicatorColor(
          buttonType: ButtonType.SECONDARY_OUTLINE,
        );

        expect(result, secondaryColor);
      });
    });

    group('getButtonTextColor', () {
      test('should return default white color', () {
        final Color result = getButtonTextColor(
          buttonType: ButtonType.PRIMARY,
        );

        expect(result, primaryLightColor);
      });

      test('should return default white color for secondary button', () {
        final Color result = getButtonTextColor(
          buttonType: ButtonType.SECONDARY,
        );

        expect(result, primaryLightColor);
      });

      test('should return default primary color for primary outline button',
          () {
        final Color result = getButtonTextColor(
          buttonType: ButtonType.PRIMARY_OUTLINE,
        );

        expect(result, primaryColor);
      });

      test('should return default secondary color for secondary outline button',
          () {
        final Color result = getButtonTextColor(
          buttonType: ButtonType.SECONDARY_OUTLINE,
        );

        expect(result, secondaryColor);
      });
    });
  });
}
