import 'package:flutter/material.dart';

class ControlbuttonV2 extends StatefulWidget {
  final void Function(String) onPressed;

  ControlbuttonV2({
    required this.onPressed,
  });

  @override
  State<ControlbuttonV2> createState() => _ControlbuttonV2State();
}

class _ControlbuttonV2State extends State<ControlbuttonV2> {
  void sendCommand(String command) {
    widget.onPressed(command);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.rotate(
          angle: 45 * 3.141592653589793 / 180, // 90 độ sang radian
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTapDown: (details) {
                  sendCommand(';');
                },
                onTapUp: (details) {
                  sendCommand('S');
                },
                onTapCancel: () {
                  sendCommand('S');
                },
                child: ElevatedButton(
                  onPressed: () async {
                    widget.onPressed(';');
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
                      sendCommand(',');
                    },
                    onTapUp: (details) {
                      sendCommand('S');
                    },
                    onTapCancel: () {
                      sendCommand('S');
                    },
                    child: ElevatedButton(
                      onPressed: () async {
                        widget.onPressed(',');
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
                      sendCommand('.');
                    },
                    onTapUp: (details) {
                      sendCommand('S');
                    },
                    onTapCancel: () {
                      sendCommand('S');
                    },
                    child: ElevatedButton(
                      onPressed: () async {
                        widget.onPressed('.');
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
                  sendCommand('/');
                },
                onTapUp: (details) {
                  sendCommand('S');
                },
                onTapCancel: () {
                  sendCommand('S');
                },
                child: ElevatedButton(
                  onPressed: () async {
                    widget.onPressed('/');
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
          ),
        ),
      ],
    );
  }
}
