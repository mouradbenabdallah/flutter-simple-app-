import 'package:flutter/material.dart';
import 'package:screens/main pages/page1.dart';

class devops extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Container(
                height: constraints.maxHeight * 0.5, // 50% of the screen height
                child: Image.asset(
                  "assets/devops.png",
                  fit: BoxFit.cover, // Adjust image fit to your need
                ),
              ),
              Container(
                height: constraints.maxHeight * 0.5, // Remaining 50%
                child: Center(
                  child: Text(
                    'This is the text below the image',
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
