import 'package:flutter/material.dart';
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
        body: Material(
          child: CreatebookingWidget(),
      ),
      ),
    );
  }
}

class CreatebookingWidget extends StatefulWidget {
  @override
  _CreatebookingWidgetState  createState() => _CreatebookingWidgetState ();
}

class _CreatebookingWidgetState  extends State<CreatebookingWidget> {

  bool isCashButtonClicked = false;
  bool isDonationButtonClicked = false;
  bool isAsapButtonClicked = false;
  bool isScheduleforlaterClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      height: 750,
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
              height: 30,
              decoration: BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 1),
              ),
            ),
          ),
          Positioned(
            top: 54,
            left: 115,
            child: Container(
              width: 160,
              height: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Karanggunilogo.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Positioned(
            top: 127,
            left: 5,
            child: Container(
              width: 45,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/6555613removebgpreview1.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 50,
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
            top: 190,
            left: 0,
            child: Container(
              width: 430,
              height: 800,
              decoration: BoxDecoration(
                color: Color.fromRGBO(167, 17, 113, 1),
              ),
            ),
          ),
          Positioned(
            top: 210,
            left: 10,
            right: 10,
            child: Container(
              width: 407,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                color: Color.fromRGBO(255, 245, 238, 1),
              ),
            ),
          ),

          Positioned(
            top: 220,
            left: 20,
            child: Text(
              'Collect from:',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Istok Web',
                fontSize: 19,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 245,
            left: 20,
            child: Text(
              'Please enter an address:',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Istok Web',
                fontSize: 19,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 335,
            left: 10,
            right: 10,
            child: Container(
              width: 407,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                color: Color.fromRGBO(255, 245, 238, 1),
              ),
            ),
          ),
          Positioned(
            top: 535,
            left: 10,
            right: 10,
            child: Container(
              width: 407,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                color: Color.fromRGBO(255, 245, 238, 1),
              ),
            ),
          ),
          Positioned(
            top: 274,
            left: 15,
            right: 20,
            child: Material(
              child: Container(
                width: 390,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your address',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: 20,
            child: Text(
              'Payment Method:',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Istok Web',
                fontSize: 19,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 575,
            left: 20,
            child: Text(
              'Karang Guni may not accept cashless payment',
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
            top: 590,
            left: 20,
            width: 345,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  // Toggle the button clicked state
                  isCashButtonClicked = !isCashButtonClicked;
                  // Ensure Donation button is not clicked
                  isDonationButtonClicked = false;
                });
                // Add your button click logic here
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    // Change the button color based on the clicked state
                    if (isCashButtonClicked) {
                      return Colors.green; // Stay green
                    }
                    return Colors.blue; // Default color
                  },
                ),
              ),
              child: Text(
              'Cash',
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
          ),

          Positioned(
            top: 640,
            left: 20,
            width: 345,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  // Toggle the button clicked state
                  // Toggle the button clicked state
                  isDonationButtonClicked = !isDonationButtonClicked;
                  // Ensure Cash button is not clicked
                  isCashButtonClicked = false;
                });
                // Add your button click logic here
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    // Change the button color based on the clicked state
                    if (isDonationButtonClicked) {
                      return Colors.green; // Stay green
                    }
                    return Colors.blue; // Default color
                  },
                ),
              ),
              child: Text(
              'Donation',
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
          ),

          Positioned(
            top: 350,
            left: 20,
            child: Text(
              'Collection Time:',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Istok Web',
                fontSize: 19,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
                height: 1,
              ),
            ),
          ),

          Positioned(
            top: 380,
            left: 20,
            width: 345,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  // Toggle the button clicked state
                  isAsapButtonClicked = !isAsapButtonClicked;
                  // Ensure Donation button is not clicked
                  isScheduleforlaterClicked = false;
                });
                // Add your button click logic here
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    // Change the button color based on the clicked state
                    if (isAsapButtonClicked) {
                      return Colors.green; // Stay green
                    }
                    return Colors.blue; // Default color
                  },
                ),
              ),
              child: Text(
              'ASAP',
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
          ),

          Positioned(
            top: 450,
            left: 20,
            width: 345,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  // Toggle the button clicked state
                  // Toggle the button clicked state
                  isScheduleforlaterClicked = !isScheduleforlaterClicked;
                  // Ensure Cash button is not clicked
                  isAsapButtonClicked = false;
                });
                // Add your button click logic here
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    // Change the button color based on the clicked state
                    if (isScheduleforlaterClicked) {
                      return Colors.green; // Stay green
                    }
                    return Colors.blue; // Default color
                  },
                ),
              ),
              child: Text(
              'Schedule for later',
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
          ),

          Positioned(
            top: 720,
            left: 145,
            
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingHomePage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    // Change the button color when selected
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.green; // Change to your desired color
                    }
                    return Colors.blue; // Default color
                  },
                ),
              ),
              child: Text(
              'Complete',
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
          ),
        ],
      ),
    );
  }
}
