import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_task/main.dart';
import 'package:toggle_switch/toggle_switch.dart';

class web_login extends StatefulWidget {
  const web_login({Key? key}) : super(key: key);

  @override
  _web_loginState createState() => _web_loginState();
}

class _web_loginState extends State<web_login> {
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MaterialButton(
                          child: const Text(
                            "Jetzt Klicken",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          onPressed: () {},
                        ),
                        MaterialButton(
                          onPressed: null,
                          height: 50,
                          minWidth: 270,
                          child: Text('Kostenlos Registrieren',
                              style: TextStyle(color: HexColor("#3a9c9a"))),
                          textColor: HexColor("#3a9c9a"),
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        MaterialButton(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: HexColor("#3a9c9a"), fontSize: 16),
                          ),
                          onPressed: () {},
                        ),
                      ],
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
