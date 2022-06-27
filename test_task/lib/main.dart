import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_task/login.dart';
import 'package:test_task/web_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: checkWeb(),
    );
  }
}

Widget checkWeb(){
  if (kIsWeb) {
    // running on the web!
    return web_login();
  } else {
    // NOT running on the web! You can check for additional platforms here.
    return login();
  }
}
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
