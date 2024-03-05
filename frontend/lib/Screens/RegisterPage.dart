import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isMerchant = false; // Initialize as customer

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Register'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Change to MainAxisAlignment.start
          children: [
            Text(
              'Create an Account',
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
              ),
            ),
            SizedBox(height: 10),
            TextField(
              // ... Existing email field
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'Email',
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              // ... Existing password field
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'Password',
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
            ),
            SizedBox(height: 20), // Add a gap between the password field and the next widget
            ElevatedButton(
              onPressed: () {
                // Implement registration functionality
              },
              child: Text('Register'),
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
                    // Implement login navigation
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Role:'),
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
                Text(_isMerchant ? 'Merchant' : 'Customer'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}