import 'package:flutter/material.dart';
import 'package:payment_app/userProfile.dart';
import 'package:payment_app/widget/button.dart';
import 'package:payment_app/widget/textFieldCard.dart';

void main() {
  runApp(
    MaterialApp(
      home: LandingPage(),
      theme: new ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            // bottom: size.height * 0.04,
            top: size.height * 0.07,
          ),
          width: size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bgless-logo.png'),
                  ),
                ),
              ),
              textFormFieldCard(
                header: "Email Address",
                icon: Icon(Icons.email_outlined),
                hintText: "Username@gmail.com",
                obscureText: false,
              ),
              SizedBox(height: 30),
              textFormFieldCard(
                header: "Password",
                icon: Icon(Icons.lock),
                hintText: "****",
                obscureText: true,
              ),
              SizedBox(height: 30),
              button(
                hintText: "Login",
                onPressedFunction: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserProfile())),
                },
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Text(
                    "Sign up",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(width: size.width / 2.1),
                  Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
