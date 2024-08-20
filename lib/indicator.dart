import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyPercentIndicator extends StatefulWidget {
  const MyPercentIndicator({super.key});

  @override
  State<MyPercentIndicator> createState() => _MyPercentIndicatorState();
}

class _MyPercentIndicatorState extends State<MyPercentIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Percent'),
        backgroundColor: Color.fromARGB(255, 119, 96, 24),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularPercentIndicator(
              radius: 60,
              percent: 0.3,
              animation: true,
              lineWidth: 15,
              animateFromLastPercent: true,
              center: const Text('30%'),
              progressColor: Colors.amberAccent,
              ),
              LinearPercentIndicator(
                 padding: const EdgeInsets.symmetric(horizontal:48),
                lineHeight: 15,
                percent: 0.2,
                center: const Text ('20%'),
                barRadius: const Radius.circular(5),
                progressColor: Colors.amberAccent,
                animation: true,
                animateFromLastPercent: true,
              ),

          ],
        ),
      ),






    );
  }
}