import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_task/main.dart';
import 'package:toggle_switch/toggle_switch.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  var ind = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  color: Colors.blue,
                  height: 4,
                ),
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 7,
                            offset: Offset(0, 0))
                      ]),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: MaterialButton(
                      child: Text(
                        "Login",
                        style:
                            TextStyle(color: HexColor("#3a9c9a"), fontSize: 16),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 400,
                              child: Image.asset("assets/images/hanshake.jpg")),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: ToggleSwitch(
                            dividerColor: Colors.grey,
                            minWidth: 120,
                            cornerRadius: 10,
                            activeFgColor: Colors.white,
                            activeBgColor: [HexColor("31959c")],
                            inactiveBgColor: Colors.white,
                            inactiveFgColor: HexColor("31959c"),
                            borderColor: [Colors.grey],
                            borderWidth: 1,
                            initialLabelIndex: ind,
                            totalSwitches: 3,
                            labels: const [
                              "Arbeitneher",
                              'Arbeitgeber',
                              'Temporärbüro'
                            ],
                            onToggle: (index) {
                              print('switched to: $index');
                              setState(() {
                                ind = index!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        tabViews(ind)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 7, offset: Offset(0, 0))
                  ]),
              child: MaterialButton(
                onPressed: () {},
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        HexColor("31959c"),
                        HexColor("31959c"),
                        HexColor("3185c3"),
                        HexColor("3083cb")
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width /
                        1.3, // min sizes for Material buttons
                    alignment: Alignment.center,
                    child: const Text(
                      'Kostenlos Registrieren',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget tabViews(index) {
  if (index == 0) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(child: Image.asset("assets/images/hanshake.jpg")),
    );
  } else if (index == 1) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(child: Image.asset("assets/images/hanshake.jpg")),
    );
  } else if (index == 2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(child: Image.asset("assets/images/hanshake.jpg")),
    );
  } else {
    return Container();
  }
}
