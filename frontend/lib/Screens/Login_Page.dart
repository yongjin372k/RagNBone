import 'package:flutter/material.dart';
import 'package:rag_and_bone/Screens/RegisterPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isMerchant = false; // Initialize as a customer

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: const Color.fromARGB(255, 5, 47, 7),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          Text(
            'Welcome!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          TextField(
            // ... Existing username field
            style: TextStyle(fontSize: 18),
            decoration: InputDecoration(
              labelText: 'Username',
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              // ... any other decoration properties you want to add
            ),
          ),
          SizedBox(height: 10),
          TextField(
            // ... Existing password field
            style: TextStyle(fontSize: 18),
            decoration: InputDecoration(
              labelText: 'Password',
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              // ... any other decoration properties you want to add
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                // Implement forgot password functionality
              },
              child: Text('Forgot Password?'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Implement login functionality
            },
            child: Text('Login'),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              textStyle: TextStyle(fontSize: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already Have an Account?'),
              TextButton(
                onPressed: () {
                  // Navigate to the RegisterPage when Sign Up is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Role:', style: TextStyle(fontSize: 18)),
              SizedBox(width: 10),
              Switch(
                value: _isMerchant,
                onChanged: (newValue) {
                  setState(() {
                    _isMerchant = newValue;
                  });
                },
                activeColor: Colors.green,
                activeTrackColor: Colors.lightGreenAccent,
              ),
              Text(_isMerchant ? 'Merchant' : 'Customer', style: TextStyle(fontSize: 18)),
            ],
          ),
        ],
      ),
    );
  }
}