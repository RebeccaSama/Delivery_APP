import 'package:flutter/material.dart';

class ButtonN extends StatelessWidget {
  final Color color, textColor;
  final void Function()? onPressed;
  final bool loading;
  final String title;
  const ButtonN(
      {Key? key,
      required this.title,
      this.onPressed,
      required this.textColor,
      this.loading = false,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            side: BorderSide(width: 1, color: Colors.green.withOpacity(0.6)),
            backgroundColor: color.withOpacity(onPressed == null ? 0.6 : 1)),
        child: loading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator.adaptive(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.white,
                    )),
              )
            : Text(
                title.toUpperCase(),
                style: TextStyle(
                    color: textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
      ),
    );
  }
}
