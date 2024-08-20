import 'package:flutter/material.dart';
import 'package:sliders/animated_widget.dart';
import 'package:sliders/each_page.dart';

class IntroSliders extends StatefulWidget {
  const IntroSliders({super.key});

  @override
  State<IntroSliders> createState() => _IntroSlidersState();
}

class _IntroSlidersState extends State<IntroSliders> {
  //Controller for the PageView
  PageController controller = PageController();
  final messages = ['First Screen', 'Second Screen', 'Third Screen'];
  final images = ['assets/abc.jpeg', 'assets/Plant.png', 'assets/xyz'];

  int numberOfPages = 3;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView.builder(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemCount: numberOfPages,
            itemBuilder: (BuildContext context, int index) {
              return EachPage(messages[index], images[index]);
            }
            ),
             Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(child: Container()),
                    Flexible(child: Indicator(
                      controller: controller,
                    )),
                    Flexible(child: (currentPage==numberOfPages-1)?
                    GestureDetector(
                      onTap: (){},
                      child: Center(
                        child: ElevatedButton(
                        onPressed:(){},
                        child: const Text('Login', style: TextStyle(fontWeight: FontWeight.bold)),
                        )
                      )
                    ):
                        GestureDetector(
                          onTap: (){
                            controller.jumpToPage(numberOfPages-1);
                          },
                        
                        child: const Center(child: 
                        Text('Skip', style:
                        TextStyle(fontWeight: FontWeight.bold)),)
                      ),)
                  ],)
                      ),
                    ),
                    ],
                    ),
                );
}
  }
