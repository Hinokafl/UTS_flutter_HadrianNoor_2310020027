import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.orange.shade200,
              child: Icon(Icons.fastfood, size: 60, color: Colors.white),
            ),
            SizedBox(height: 30),

            TextField(
              controller: userController,
              decoration: InputDecoration(labelText: "Username"),
            ),
            SizedBox(height: 10),

            TextField(
              controller: passController,
              obscureText: true,
              decoration: InputDecoration(labelText: "Password"),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text("Forgot Password?"),
              ),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/list');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 45),
                backgroundColor: Colors.orange,
              ),
              child: Text("SIGN IN"),
            ),
          ],
        ),
      ),
    );
  }
}
