import 'package:app_robo_2024/widgets/ButtonBluetoothClick.dart';
import 'package:app_robo_2024/widgets/ButtonBluetoothPress.dart';
import 'package:app_robo_2024/widgets/ControlButton-v2.dart';
import 'package:app_robo_2024/widgets/ControlButton.dart';
import 'package:app_robo_2024/widgets/SpeedRadio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_joystick/flutter_joystick.dart';
import 'package:permission_handler/permission_handler.dart';

class BluetoothApp extends StatefulWidget {
  @override
  _BluetoothAppState createState() => _BluetoothAppState();
}

class _BluetoothAppState extends State<BluetoothApp> {
  BluetoothConnection? connection;
  final String nameDevice = 'ROBOT_CNTT';
  bool successFulDevice = false;

  // final bool _selectedValue = false;

  @override
  void dispose() {
    connection?.dispose(); // Hủy kết nối Bluetooth
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Lấy kích thước màn hình
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenSize.height,
          width: screenSize.width,
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: SpeedRadio(
                    onPressed: sendCommand,
                  )),
              Align(
                alignment: Alignment.topCenter,
                child: !successFulDevice
                    ? ElevatedButton(
                        onPressed: () => connectToESP32(),
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 102, 102),
                            padding: const EdgeInsets.all(15)),
                        child: const Text("Kết nối"),
                      )
                    : GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Bạn có muốn kết nối lại ROBOT_CNTT ?',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); // Đóng dialog
                                    },
                                    child: Text(
                                      'Không',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      connectToESP32();
                                      Navigator.of(context).pop();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                    ),
                                    child: Text(
                                      'Có',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              color: Color.fromARGB(255, 147, 147, 147),
                            ),
                            child: Text(
                              nameDevice,
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Buttonbluetoothpress(
                              keyValue: 'O',
                              title: "Quay trái",
                              onPressed: sendCommand),
                          const SizedBox(
                            width: 10,
                          ),
                          Buttonbluetoothpress(
                              keyValue: 'R',
                              title: "Quay phải",
                              onPressed: sendCommand),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      ControlButton(
                        onPressed: sendCommand,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BluetoothButtonClick(
                        keyValue: 'U',
                        title: "Mở 2 kẹp",
                        onPressed: sendCommand,
                        colors: Color.fromARGB(255, 85, 191, 52),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BluetoothButtonClick(
                        keyValue: 'I',
                        title: "Đóng 2 kẹp",
                        onPressed: sendCommand,
                        colors: Color.fromARGB(255, 85, 191, 52),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Buttonbluetoothpress(
                              keyValue: 'X',
                              title: "Nâng tay",
                              onPressed: sendCommand),
                          const SizedBox(
                            width: 10,
                          ),
                          Buttonbluetoothpress(
                              keyValue: 'Z',
                              title: "Hạ tay",
                              onPressed: sendCommand),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          BluetoothButtonClick(
                            keyValue: 'N',
                            title: 'Mở kẹp trái',
                            onPressed: sendCommand,
                            colors: Color.fromARGB(255, 212, 118, 118),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          BluetoothButtonClick(
                            keyValue: 'V',
                            title: 'Mở kẹp phải',
                            onPressed: sendCommand,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          BluetoothButtonClick(
                            keyValue: 'M',
                            title: 'Đóng kẹp trái',
                            onPressed: sendCommand,
                            colors: Color.fromARGB(255, 212, 118, 118),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          BluetoothButtonClick(
                            keyValue: 'B',
                            title: 'Đóng kẹp phải',
                            onPressed: sendCommand,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void connectToESP32() async {
    // Yêu cầu quyền BLUETOOTH_CONNECT nếu cần
    if (await Permission.bluetoothConnect.request().isGranted) {
      List<BluetoothDevice> devices =
          await FlutterBluetoothSerial.instance.getBondedDevices();
      BluetoothDevice? selectedDevice;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Đang kết nối'),
          backgroundColor: Color.fromARGB(255, 151, 151, 151),
        ),
      );

      // Kiểm tra xem có thiết bị nào tên là "ROBOT_CNTT" hay không
      for (BluetoothDevice device in devices) {
        if (device.name == nameDevice) {
          selectedDevice = device;
          break;
        }
      }

      if (selectedDevice != null) {
        BluetoothConnection.toAddress(selectedDevice.address).then((conn) {
          setState(() {
            connection = conn;
            successFulDevice = true;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Đã kết nối với ${selectedDevice?.name}'),
              backgroundColor: Colors.green,
            ),
          );
          print('Đã kết nối với ${selectedDevice?.name}');
        }).catchError((error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                  'Không thể kết nối, xảy ra ngoại lệ, đảm bảo đã bật Bluetooth và ROBOT_CNTT'),
              backgroundColor: Colors.red,
            ),
          );
          print('Không thể kết nối, xảy ra ngoại lệ');
          print(error);
          successFulDevice = false;
        });
      } else {
        setState(() {
          successFulDevice = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
                'Không tìm thấy thiết bị, đảm bảo đã bật Bluetooth và ROBOT_CNTT'),
            backgroundColor: Colors.red,
          ),
        );
        print('Không tìm thấy thiết bị');
      }
    } else {
      // Quyền bị từ chối
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Yêu cầu quyền kết nối Bluetooth bị từ chối'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void sendCommand(String command) {
    print(command);
    connection?.output.add(Uint8List.fromList(command.codeUnits));
    connection?.output.allSent;
  }
}
