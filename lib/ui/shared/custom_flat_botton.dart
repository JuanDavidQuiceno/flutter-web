import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String description;
  final void Function()? onPressed;
  final Color? color;
  const CustomFlatButton({
    Key? key,
    required this.description,
    required this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(primary: color),
      child: Text(
        description,
      ),
    );
  }
}
