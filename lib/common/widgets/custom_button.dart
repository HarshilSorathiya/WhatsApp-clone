import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundcolor,
    required this.onPressed,
  });
  final String text;
  final Color backgroundcolor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: backgroundColor),
      ),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
          backgroundColor: backgroundcolor),
    );
  }
}
