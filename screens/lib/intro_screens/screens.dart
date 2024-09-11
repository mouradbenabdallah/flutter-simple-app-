import 'package:flutter/material.dart';
import 'package:screens/intro_screens/intro_page_1.dart';
import 'package:screens/intro_screens/intro_page_2.dart';
import 'package:screens/intro_screens/intro_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class screens extends StatefulWidget {
  const screens({super.key});

  @override
  State<screens> createState() => _screensState();
}

class _screensState extends State<screens> {
//controller
  PageController _controller = PageController();

//keep track
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          //dot indicator
          Container(
            alignment: Alignment(0, 0.90),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //skip
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text('skip'),
                  ),
                  // dot indicator
                  SmoothPageIndicator(controller: _controller, count: 3),
                  //next or done
                  GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.ease,
                      );
                    },
                    child: Text('next'),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}








/*Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.red, Colors.blue],
                 ),
                ),
              ),*/





            //8:08