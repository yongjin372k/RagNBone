import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: RegisterPage(),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 430,
        height: 932,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 245, 238, 1),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 260,
              left: 61,
              child: Container(
                width: 308,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 61,
              child: Container(
                width: 308,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            Positioned(
              top: 400,
              left: 61,
              child: Container(
                width: 308,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 61,
              child: Container(
                width: 308,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
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
              top: 84,
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
              top: 223,
              left: 24,
              right: 24,
              child: Text(
                'Let’s make magic happen!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Istok Web',
                  fontSize: 18,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 280,
              left: 24,
              right: 24,
              child: Text(
                'What’s your name?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(255, 245, 238, 1),
                  fontFamily: 'Istok Web',
                  fontSize: 14,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 355,
              left: 24,
              right: 24,
              child: Text(
                'What’s your phone number?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(255, 245, 238, 1),
                  fontFamily: 'Istok Web',
                  fontSize: 14,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 425,
              left: 24,
              right: 24,
              child: Text(
                'Create a password!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(255, 245, 238, 1),
                  fontFamily: 'Istok Web',
                  fontSize: 14,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 495,
              left: 24,
              right: 24,
              child: Text(
                'Reconfirm your password!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(255, 245, 238, 1),
                  fontFamily: 'Istok Web',
                  fontSize: 14,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 550,
              left: 24,
              right: 24,
              child: Text(
                'I would like to sign up as a:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Istok Web',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 650,
              left: 24,
              right: 24,
              child: Text(
                'By signing up, you agree to the terms & conditions.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Istok Web',
                  fontSize: 12,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 590,
              left: 90,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  color: Color.fromRGBO(167, 17, 113, 1),
                  border: Border.all(
                    color: Color.fromRGBO(19, 98, 9, 1),
                    width: 1,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Karang Guni',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 245, 238, 1),
                        fontFamily: 'Istok Web',
                        fontSize: 14,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 590,
              left: 222,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  color: Color.fromRGBO(167, 17, 113, 1),
                  border: Border.all(
                    color: Color.fromRGBO(19, 98, 9, 1),
                    width: 1,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Donor/Seller',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 245, 238, 1),
                        fontFamily: 'Istok Web',
                        fontSize: 14,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
