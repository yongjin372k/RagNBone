import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: greetingPage(),
      ),
    );
  }
}

class greetingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      height: 932,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 245, 238, 1),
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
                color: Color.fromRGBO(217, 217, 217, 1),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 80,
            child: Container(
              width: 269,
              height: 117,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Karanggunilogo.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Positioned(
            top: 274,
            left: 24,
            child: Container(
              width: 381,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 245, 238, 1),
              ),
              child: Text(
                'Hi there!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Istok Web',
                  fontSize: 24,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
          ),
          Positioned(
            top: 395,
            left: 24,
            child: Container(
              width: 381,
              height: 60,
              alignment: Alignment.center, // Corrected alignment
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 381,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(167, 17, 113, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 0,
                    right: 0, // Adjusted to take the full width
                    child: Text(
                      'Log In',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Istok Web',
                        fontSize: 24,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 477,
            left: 24,
            child: Container(
              width: 381,
              height: 60,
              alignment: Alignment.center,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: 381,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(167, 17, 113, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 0,
                    right: 0,
                    child: Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Istok Web',
                        fontSize: 24,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
