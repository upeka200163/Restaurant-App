import 'package:flutter/material.dart';
import 'home.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRegister = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isRegister ? "Register" : "Login",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text(isRegister ? "Register" : "Login"),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => HomeScreen()),
                );
              },
            ),

            TextButton(
              onPressed: () {
                setState(() {
                  isRegister = !isRegister;
                });
              },
              child: Text(
                isRegister
                    ? "Already have an account? Login"
                    : "No account? Register",
              ),
            )
          ],
        ),
      ),
    );
  }
}
