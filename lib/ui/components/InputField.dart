import 'package:flutter/material.dart';


class InputField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final IconData? prefixIcon;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final bool? readonly;
  final int? minLines;
  final bool? textCenter;
  final double? fontsize;

  const InputField(
      {Key? key,
      required this.label,
      this.obscureText = false,
      required this.controller,
      this.minLines,
      this.validator,
      this.prefixIcon,
      this.focusNode,
      this.keyboardType,
      this.textCenter,
      this.readonly,
      this.fontsize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color bordercolor = readonly != null
        ? (readonly!)
            ? Colors.grey
            : Colors.brown
        : Colors.brown;
    return TextFormField(
      textAlign: textCenter != null ? TextAlign.center : TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(
        fontSize: fontsize ?? 14,
      ),
      minLines: minLines ?? 1,
      maxLines: minLines ?? 1,
      decoration: InputDecoration(
        errorMaxLines: 2,
        labelText: label,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        errorStyle:
            TextStyle(color: Colors.redAccent, fontSize: fontsize ?? 14),
        labelStyle:
            TextStyle(color: Colors.brown, fontSize: fontsize ?? 14),
        floatingLabelStyle: TextStyle(fontSize: fontsize ?? 14),
        hintStyle: TextStyle(fontSize: fontsize ?? 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: bordercolor), // Customize border color
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: bordercolor), // Customize border color
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: bordercolor), // Customize border color
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: bordercolor), // Customize border color
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: bordercolor), // Customize border color
        ),
      ),
      keyboardType: keyboardType != null ? TextInputType.number : keyboardType,
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      readOnly: readonly ?? false,
      focusNode: focusNode,
    );
  }
}
