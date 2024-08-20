import 'package:flutter/material.dart';

class EachPage extends StatelessWidget {
  final String message;
  final String image;
  
  const EachPage(
    this.message,
    this.image, {super.key}
    
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amberAccent,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(image, fit: BoxFit.scaleDown,
              width: 200,
              height: 200,),
              Text(message),
            ],
          ),
        ),
                ),
    );
  }
}
