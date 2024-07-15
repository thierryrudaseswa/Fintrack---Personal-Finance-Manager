import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? initialValue;
  final Widget? icon;
  final double height;

  CustomInput({
    required this.label,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.initialValue,
    this.icon,
    this.height = 56.0, // Default height
  });

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: brightness == Brightness.dark
                ? colorScheme.onSurface.withOpacity(0.2)
                : colorScheme.shadow,
            blurRadius: 4.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText ? _obscureText : false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: brightness == Brightness.dark
                  ? colorScheme.onSurface.withOpacity(0.2)
                  : colorScheme.outline,
              width: 1.0,
            ),
          ),
          filled: true,
          fillColor: brightness == Brightness.dark
              ? colorScheme.surface
              : colorScheme.background,
          labelText: widget.initialValue ?? 'Enter your ${widget.label}',
          labelStyle: TextStyle(
            color: brightness == Brightness.dark
                ? colorScheme.onSurface
                : colorScheme.onBackground,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
          hintStyle: TextStyle(
            color: brightness == Brightness.dark
                ? colorScheme.onSurface.withOpacity(0.6)
                : colorScheme.onBackground.withOpacity(0.6),
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: (widget.height - 16.0) / 2, // Adjust the height
          ),
          prefixIcon: widget.icon != null
              ? Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                  child: widget.icon,
                )
              : null,
          suffixIcon: widget.label == "password"
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: brightness == Brightness.dark
                          ? colorScheme.onSurface
                          : colorScheme.onBackground,
                    ),
                  ),
                )
              : null,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: brightness == Brightness.dark
                  ? colorScheme.onSurface.withOpacity(0.2)
                  : colorScheme.outline,
              width: 1.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Colors.red,
              width: 2.0,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: brightness == Brightness.dark
                  ? colorScheme.onSurface.withOpacity(0.2)
                  : colorScheme.outline,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
