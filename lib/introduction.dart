import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroSliders extends StatefulWidget {
  const IntroSliders({super.key});

  @override
  State<IntroSliders> createState() => _IntroSlidersState();
}

class _IntroSlidersState extends State<IntroSliders> {
  double _sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Slider Value: ${_sliderValue.toStringAsFixed(1)}',
            style: const TextStyle(fontSize: 18.0),
          ),
          const SizedBox(height: 20.0),
          Slider(
            value: _sliderValue,
            min: 0,
            max: 50,
            divisions: 30,
            onChanged: (double value) {
              setState(() {
                _sliderValue = value;
              });
            },
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
          ),
        ],
      )),
    );
  }
}
