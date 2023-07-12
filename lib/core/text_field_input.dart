  import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final bool isPassword;
  final String? Function(String?)? validator;
  final void Function(String value)? onChanged;
  final void Function()? onLongPressUp;
  final void Function()? onTap;
  final void Function(LongPressDownDetails value)? onLongPressDown;
  final String? hint;
  final FontWeight? fontWeight;
  final Color? color;
  final Color? coloricons;
  final String? initialText;
  final bool readOnly;
  final IconData? iconData;

  const TextFieldInput({
    Key? key,
    this.controller,
    required this.label,
    this.isPassword = false,
    this.validator,
    this.onChanged,
    this.onLongPressUp,
    this.onTap,
    this.onLongPressDown,
    this.hint,
    this.fontWeight,
    this.color,
    this.coloricons,
    this.initialText,
    this.readOnly = false,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        TextFormField(
          initialValue: initialText,
          readOnly: readOnly,
          enableInteractiveSelection: false,
          controller: controller,
          obscureText: isPassword,
          validator: validator,
          onChanged: onChanged,
          textAlignVertical: TextAlignVertical.bottom,
          obscuringCharacter: "*",
          style: TextStyle(fontSize: 14, fontWeight: fontWeight),
          decoration: InputDecoration(
            hintText: hint,
            suffixIcon: GestureDetector(
              onTap: onTap,
              onLongPressUp: onLongPressUp,
              onLongPressDown: onLongPressDown,
              child: Icon(iconData, color: coloricons),
            ),
            hintStyle:
                TextStyle(fontSize: 14, fontWeight: fontWeight, color: color),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.black12)),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.black12)),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
        Positioned(
          top: -8,
          left: 8,
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              label,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
          ),
        )
      ],
    );
  }
}
