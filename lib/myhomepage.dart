// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  Map<String, double> datamap = {
    "varsity pera": 9.0,
    'tution': 5.0,
    'Cha Adda': 1.5,
    'phone': 3.0,
    'Ghum': 5,
    'depresssss': 1,
  };
  List<Color> colorList = [
    const Color(0xffAA1A20),
    //const Color(0xff0EE094),
    Colors.teal,
    Color.fromARGB(255, 101, 9, 154),
    const Color(0xff213A50),
    const Color(0xffFE9535),
    Color.fromARGB(172, 37, 35, 35),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      // appBar: AppBar(title: Text('pie chart')),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: [
                    const Color(0xff213A50),
                    Color.fromARGB(91, 99, 23, 90),
                  ],
                ),
              ),
              child: Center(
                  child: Flexible(
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      "pie chart  animation! ",
                      textStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                  isRepeatingAnimation: true,
                ),
              )),
              height: 100),
          Container(
            height: 583,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                // ignore: prefer_const_literals_to_create_immutables
                colors: [
                  const Color(0xff213A50),
                  Color.fromARGB(91, 99, 23, 90),
                ],
              ),
            ),
            child: Center(
              child: Container(
                child: Center(
                  child: PieChart(
                    dataMap: datamap,
                    colorList: colorList,
                    chartRadius: MediaQuery.of(context).size.width / 2,
                    centerText: 'plan execu when?',
                    chartType: ChartType.ring,
                    animationDuration: Duration(seconds: 3),
                    chartValuesOptions: ChartValuesOptions(
                      showChartValuesInPercentage: true,
                      showChartValuesOutside: true,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
