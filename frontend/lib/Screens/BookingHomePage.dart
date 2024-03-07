import 'package:flutter/material.dart';
import 'package:rag_and_bone/Screens/Login_Page.dart';
import 'package:rag_and_bone/Screens/trackKarangGuni.dart';
import 'package:rag_and_bone/Screens/BookingHomePage.dart';
import 'package:rag_and_bone/Screens/CreateBooking.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BookingHomePage(),
      ),
    );
  }
}

class BookingHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 430,
        height: 900,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 245, 238, 1),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 214,
              left: 0,
              child: Container(
                width: 430,
                height: 340,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 159, 17, 107),
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
              top: 54,
              left: 135,
              child: Container(
                width: 160,
                height: 68,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Karanggunilogo.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 140,
              left: 23,
              child: Text(
                'Good Morning, Ewan!',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Istok Web',
                  fontSize: 24,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 174,
              left: 23,
              child: Text(
                'What would you like to do today?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Istok Web',
                  fontSize: 15,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 230,
              left: 240,
              child: Container(
                width: 140,
                height: 74,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            )
                          ],
                          color: Color.fromRGBO(255, 245, 238, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 12,
                      left: 17,
                      child: Text(
                        'Need Help?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Istok Web',
                          fontSize: 20,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 230,
              left: 15,
              child: GestureDetector(
              onTap: () {
                // // Add your desired functionality here
                // print('Track Karang Guni Live button tapped!');
                // // You can navigate to another screen, show a dialog, etc.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreatebookingWidget()),
                );
              },
              child: Container(
                width: 215,
                height: 215,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 215,
                        height: 215,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            )
                          ],
                          color: Color.fromRGBO(255, 245, 238, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 14.06,
                      left: 17,
                      child: Text(
                        'Create Booking',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Istok Web',
                          fontSize: 24,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 45,
                      left: 17,
                      child: Text(
                        'Book before 4pm \nfor next day pick up',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Istok Web',
                          fontSize: 14,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 65,
                      child: Container(
                        width: 167,
                        height: 149,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/Booktimeiconfilledcoloriconforyourwebsitemobilepresentationandlogodesignvectorremovebgpreview1.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ),
            ),
            
            Positioned(
              top: 460,
              left: 15,
              child: Container(
                width: 215,
                height: 80,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 215,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            )
                          ],
                          color: Color.fromRGBO(255, 245, 238, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 14.06,
                      left: 17,
                      child: Text(
                        'Urgent Collection',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Istok Web',
                          fontSize: 24,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 45,
                      left: 17,
                      child: Text(
                        '1.99 pick up fee',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Istok Web',
                          fontSize: 14,
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
              top: 300,
              left: 240,
              child: GestureDetector(
              onTap: () {
                // // Add your desired functionality here
                // print('Track Karang Guni Live button tapped!');
                // // You can navigate to another screen, show a dialog, etc.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapSample()),
                );
              },
              child: Container(
                width: 140,
                height: 240,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 140,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            )
                          ],
                          color: Color.fromRGBO(255, 245, 238, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 12.36,
                      left: 11,
                      child: Text(
                        'Track\nKarang\nGuni Live',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Istok Web',
                          fontSize: 24,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 90,
                      left: 11,
                      child: Text(
                        'Reach a\nKarang Guni now',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Istok Web',
                          fontSize: 15,
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
            ),
            Positioned(
              top: 480,
              left: 240,
              child: GestureDetector(
              onTap: () {
                // // Add your desired functionality here
                // print('Track Karang Guni Live button tapped!');
                // // You can navigate to another screen, show a dialog, etc.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapSample()),
                );
              },
              child: Container(
                width: 140,
                height: 60,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 140,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            )
                          ],
                          color: Color.fromRGBO(255, 245, 238, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 13,
                      child: Text(
                        'Learn more!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Istok Web',
                          fontSize: 20,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
              ),
            ),
            Positioned(
              top: 560,
              left: 6,
              right: 6,
              child: Container(
                width: 380,
                height: 182,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 12,
                      child: Container(
                        width: 380,
                        height: 182,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 228, 225, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 36,
                      left: 88,
                      child: Text(
                        'Recyclable weighs at least 3kg, \nexcept for electronic devices.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Istok Web',
                          fontSize: 13,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 125,
                      left: 15,
                      right: 15,
                      child: Text(
                        'View prohibited items',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Istok Web',
                          fontSize: 10,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 95,
                      left: 88,
                      child: Text(
                        'No dangerous, illegal or restricted items.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Istok Web',
                          fontSize: 13,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 78,
                      left: 23,
                      child: Container(
                        width: 46,
                        height: 45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/46670721.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 4,
                      left: 19,
                      child: Text(
                        'Your recyclables must fit these specifications:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Istok Web',
                          fontSize: 13,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 25,
                      left: 19,
                      child: Container(
                        width: 53,
                        height: 47,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/35151681.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
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
