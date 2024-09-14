import 'package:flutter/material.dart';

class BluetoothButtonClick extends StatelessWidget {
  final String keyValue;
  final String title;
  final void Function(String) onPressed;
  final Color colors;

  BluetoothButtonClick({
    required this.keyValue,
    required this.title,
    required this.onPressed,
    this.colors = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: ElevatedButton(
        onPressed: () => onPressed(keyValue),
        style: ElevatedButton.styleFrom(backgroundColor: colors),
        child: Text(title),
      ),
    );
  }
}
