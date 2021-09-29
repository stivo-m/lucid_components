import 'package:flutter/material.dart';
import 'package:lucid_components/src/colors.dart';

class LucidRadio extends StatelessWidget {
  const LucidRadio({
    Key? key,
    required this.value,
    this.selectedColor = primaryColor,
    this.isSelected = false,
  }) : super(key: key);

  final bool? isSelected;
  final Color? selectedColor;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: selectedColor,
          ),
          child: Center(
            child: isSelected!
                ? Container(
                    width: 12,
                    height: 12,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: primaryLightColor,
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          value,
          style: TextStyle(
            color: isSelected! ? selectedColor : greyTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
