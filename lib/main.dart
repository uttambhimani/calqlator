import 'package:flutter/material.dart';
import 'sum.dart';
import 'package:calqlator/sum.dart';
void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: iphone_cal()));
}
class iphone_cal extends StatefulWidget {
  const iphone_cal({Key? key}) : super(key: key);
  @override
  State<iphone_cal> createState() => _iphone_calState();
}
class _iphone_calState extends State<iphone_cal> {
  String number = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.topRight,
                child: Text(
                  "$number",
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  splashFactory: InkRipple.splashFactory,
                  splashColor: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                  onTap: () {
                    setState(() {
                      number = "";
                    });
                  },
                  child: Button("AC", Colors.green, Colors.red),
                ),
                InkWell(
                  splashFactory: InkRipple.splashFactory,
                  splashColor: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                  onTap: () {
                  },
                  child: Button("C", Colors.green, Colors.pink),
                ),
                InkWell(
                  splashFactory: InkRipple.splashFactory,
                  borderRadius: BorderRadius.circular(60),
                  onTap: () {
                    setState(() {
                      number = "${number}%";
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: Text(
                        "%",
                        style: TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
                InkWell(
                  splashFactory: InkRipple.splashFactory,
                  highlightColor: Colors.amber,
                  splashColor: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                  onTap: () {
                    setState(() {
                      number = "${number}/";
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: Text(
                        "/",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 60,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.amber.shade600,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  splashColor: Colors.white,
                  splashFactory: InkRipple.splashFactory,
                  borderRadius:

                  BorderRadius.circular(20),

                  onTap: () {
                    setState(() {
                      number = "${number}7";
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: Text(
                        "7",
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
                InkWell(
                  splashColor: Colors.white,
                  splashFactory: InkRipple.splashFactory,
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    setState(() {
                      number = "${number}8";
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: const Text(
                        "8",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
                InkWell(
                  splashColor: Colors.white,
                  splashFactory: InkRipple.splashFactory,
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    setState(() {
                      number = "${number}9";
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: Text(
                        "9",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
                InkWell(
                  splashColor: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                  onTap: () {
                    setState(() {
                      number = "${number}*";
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 19, left: 5),
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: const Text(
                        "*",
                        style: TextStyle(
                          fontSize: 70,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.amber.shade600,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  splashColor: Colors.white,
                  splashFactory: InkRipple.splashFactory,
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    setState(() {
                      number = "${number}4";
                    });

                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: Text(
                        "4",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
                InkWell(
                  splashColor: Colors.white,
                  splashFactory: InkSplash.splashFactory,
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    setState(() {
                      number = "${number}5";
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: Text(
                        "5",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
                InkWell(
                  splashColor: Colors.white,
                  splashFactory: InkRipple.splashFactory,
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    setState(() {
                      number = "${number}6";
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: Text(
                        "6",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
                InkWell(
                  splashColor: Colors.white,
                  splashFactory: InkRipple.splashFactory,
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    setState(() {
                      number = "${number}-";
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: const Text(
                        "-",
                        style: TextStyle(
                          fontSize: 80,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.amber.shade600,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  splashColor: Colors.white,
                  splashFactory: InkRipple.splashFactory,
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    setState(() {
                      number = "${number}1";
                    });
                  },
                  child: Container(



                    height: 100,
                    width: 100,
                    child: const Center(
                      child: Text(
                        "1",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
                InkWell(
                  splashColor: Colors.white,
                  splashFactory: InkRipple.splashFactory,
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    setState(() {
                      number = "${number}2";
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
                InkWell(
                  splashColor: Colors.white,
                  splashFactory: InkRipple.splashFactory,
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    setState(() {
                      number = "${number}3";
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: Text(
                        "3",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
                InkWell(
                  splashColor: Colors.white,
                  splashFactory: InkRipple.splashFactory,
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    setState(() {
                      number = "${number}+";
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: const Text(
                        "+",
                        style: TextStyle(
                          fontSize: 60,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.amber.shade600,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  splashColor: Colors.white,
                  splashFactory: InkRipple.splashFactory,
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    setState(() {
                      number = "${number}0";
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 210,
                    child: const

                    Center(
                      child: Text(
                        "0",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
                InkWell(
                  splashColor: Colors.white,
                  splashFactory: InkRipple.splashFactory,
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    setState(() {
                      number = "${number}.";
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
                InkWell(
                  splashColor: Colors.white,
                  splashFactory: InkRipple.splashFactory,
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    // sum s1 = sum();
                    // setState(() {
                    //   number = s1.calculate(number).toString();
                    // });
                    number =   Calculator.parseString(number);
                    setState(() {
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: Text(
                        "=",
                        style: TextStyle(
                          fontSize: 60,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.amber.shade600,
                        borderRadius: BorderRadius.circular(60)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget Button(String name, Color c1, Color txtC1) {
    return Container(
      height: 100,
      width: 100,
      child: Center(
        child: Text(
          "$name",
          style: TextStyle(fontSize: 50, color: txtC1),
        ),
      ),
      decoration:
      BoxDecoration(color: c1, borderRadius: BorderRadius.circular(60)),
    );
  }
}