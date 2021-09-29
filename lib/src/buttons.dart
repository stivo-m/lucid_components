import 'package:flutter/material.dart';
import 'package:lucid_components/src/constants.dart';
import 'package:lucid_components/src/enums.dart';
import 'package:lucid_components/src/utils.dart';

class LucidButton extends StatefulWidget {
  const LucidButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.buttonState = ButtonState.IDLE,
    this.buttonType = ButtonType.PRIMARY,
    this.animationDuration = kAnimationDuration,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String buttonText;
  final ButtonType? buttonType;
  final ButtonState? buttonState;
  final Duration? animationDuration;

  @override
  _LucidButtonState createState() => _LucidButtonState();
}

class _LucidButtonState extends State<LucidButton>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    // initialize the animation controller
    _animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );

    // initialize the animation itself
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double _buttonWidth = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, _) {
        // return the correct child depending on whether the button is
        // idle or busy

        return AnimatedContainer(
          duration: widget.animationDuration!,
          width: widget.buttonState == ButtonState.IDLE ? _buttonWidth : 60,
          height: 60,
          decoration: BoxDecoration(
            color: getButtonBacgroundColor(buttonType: widget.buttonType!),
            borderRadius: BorderRadius.circular(
              widget.buttonState == ButtonState.IDLE ? kBorderRadious : 60,
            ),
            border: Border.all(
              color: getButtonBorderColor(buttonType: widget.buttonType!),
            ),
          ),
          child: RawMaterialButton(
            onPressed: widget.buttonState == ButtonState.IDLE
                ? widget.onPressed
                : null,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: widget.buttonState == ButtonState.IDLE
                    ? FittedBox(
                        child: Text(
                          widget.buttonText,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: getButtonTextColor(
                                buttonType: widget.buttonType!),
                          ),
                        ),
                      )
                    : FittedBox(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            getButtonLoadingIndicatorColor(
                                buttonType: widget.buttonType!),
                          ),
                        ),
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
