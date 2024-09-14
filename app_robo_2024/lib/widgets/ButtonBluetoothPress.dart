import 'dart:async';
import 'package:flutter/material.dart';

class Buttonbluetoothpress extends StatefulWidget {
  final String keyValue;
  final String title;
  final void Function(String) onPressed;

  Buttonbluetoothpress({
    required this.keyValue,
    required this.title,
    required this.onPressed,
  });

  @override
  State<Buttonbluetoothpress> createState() => _ButtonbluetoothpressState();
}

class _ButtonbluetoothpressState extends State<Buttonbluetoothpress> {
  void _sendCommand(String command) {
    widget.onPressed(command);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        _sendCommand(widget.keyValue);
      },
      onTapUp: (details) {
        _sendCommand('S');
      },
      onTapCancel: () {
        _sendCommand('S');
      },
      child: ElevatedButton(
        onPressed: () async {
          widget.onPressed(widget.keyValue);
          await Future.delayed(Duration(milliseconds: 50));
          widget.onPressed('S');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 33, 72, 243),
        ),
        child: Text(widget.title),
      ),
    );
  }
}
