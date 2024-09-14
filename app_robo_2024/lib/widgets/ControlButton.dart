import 'package:flutter/material.dart';

class ControlButton extends StatefulWidget {
  final void Function(String) onPressed;

  ControlButton({
    required this.onPressed,
  });

  @override
  State<ControlButton> createState() => _ControlButtonState();
}

class _ControlButtonState extends State<ControlButton> {
  void _sendCommand(String command) {
    widget.onPressed(command);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTapDown: (details) {
            _sendCommand('T');
          },
          onTapUp: (details) {
            _sendCommand('S');
          },
          onTapCancel: () {
            _sendCommand('S');
          },
          child: ElevatedButton(
            onPressed: () async {
              widget.onPressed('T');
              await Future.delayed(Duration(milliseconds: 50));
              widget.onPressed('S');
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
              backgroundColor: Color.fromARGB(255, 168, 168, 168),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ), // Giảm độ bo góc
              ),
            ),
            child: Icon(
              Icons.arrow_upward,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTapDown: (details) {
                _sendCommand('A');
              },
              onTapUp: (details) {
                _sendCommand('S');
              },
              onTapCancel: () {
                _sendCommand('S');
              },
              child: ElevatedButton(
                onPressed: () async {
                  widget.onPressed('A');
                  await Future.delayed(Duration(milliseconds: 50));
                  widget.onPressed('S');
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  backgroundColor: Color.fromARGB(255, 168, 168, 168),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ), // Giảm độ bo góc
                  ),
                ),
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 69,
            ),
            GestureDetector(
              onTapDown: (details) {
                _sendCommand('P');
              },
              onTapUp: (details) {
                _sendCommand('S');
              },
              onTapCancel: () {
                _sendCommand('S');
              },
              child: ElevatedButton(
                onPressed: () async {
                  widget.onPressed('P');
                  await Future.delayed(Duration(milliseconds: 50));
                  widget.onPressed('S');
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  backgroundColor: Color.fromARGB(255, 168, 168, 168),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ), // Giảm độ bo góc
                  ),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTapDown: (details) {
            _sendCommand('L');
          },
          onTapUp: (details) {
            _sendCommand('S');
          },
          onTapCancel: () {
            _sendCommand('S');
          },
          child: ElevatedButton(
            onPressed: () async {
              widget.onPressed('L');
              await Future.delayed(Duration(milliseconds: 50));
              widget.onPressed('S');
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
              backgroundColor: Color.fromARGB(255, 168, 168, 168),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ), // Giảm độ bo góc
              ),
            ),
            child: Icon(
              Icons.arrow_downward,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
