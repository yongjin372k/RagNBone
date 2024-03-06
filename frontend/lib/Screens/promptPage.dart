import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: promptPageWidget(),
      ),
    );
  }
}

class promptPageWidget extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
          // Figma Flutter Generator PromptpageWidget - FRAME
            return Container(
            width: 430,
            height: 932,
            decoration: BoxDecoration(
                color : Color.fromRGBO(255, 245, 238, 1),
            ),
              child: Stack(
              children: <Widget>[
                Positioned(
              top: 0,
              left: 0,
              child: Container(
              width: 430,
              height: 47,
              decoration: BoxDecoration(
                color : Color.fromRGBO(217, 217, 217, 1),
              )
            )
          ),Positioned(
            top: 320,
            left: 80,
            child: Container(
            width: 269,
            height: 117,
            decoration: BoxDecoration(
            image : DecorationImage(
            image: AssetImage('assets/images/Karanggunilogo.png'),
            fit: BoxFit.fitWidth
      ),
  )
      )
      ),
        ]
      )
    );
  }
}
        