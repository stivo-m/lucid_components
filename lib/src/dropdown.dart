import 'package:flutter/material.dart';
import 'package:lucid_components/src/colors.dart';
import 'package:lucid_components/src/constants.dart';

class LucidDropDown extends StatelessWidget {
  const LucidDropDown({
    Key? key,
    required this.options,
    this.hintText,
    this.value,
    this.onChanged,
  }) : super(key: key);
  final String? hintText;
  final String? value;
  final Function(String? value)? onChanged;
  final List<String> options;

  @override
  Widget build(BuildContext context) {
    final BoxBorder boxBorder = Border.all(
      color: superLightGreyTextColor.withOpacity(1),
      width: 0.5,
    );
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: primaryLightColor,
        borderRadius: BorderRadius.circular(kBorderRadious),
        border: boxBorder,
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        underline: const SizedBox.shrink(),
        icon: Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            color: primaryLightColor,
            shape: BoxShape.circle,
            border: boxBorder,
          ),
          child: const Center(
            child: Icon(
              Icons.arrow_drop_down,
              size: 25,
              color: superLightGreyTextColor,
            ),
          ),
        ),
        hint: Text(hintText ?? ''),
        value: value,
        items: options.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
