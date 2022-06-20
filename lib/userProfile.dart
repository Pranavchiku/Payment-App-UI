import 'package:flutter/material.dart';
import 'package:payment_app/widget/bottomNavBar.dart';
import 'package:payment_app/widget/expenditure.dart';
import 'package:payment_app/widget/expenditureCard.dart';
import 'package:payment_app/widget/profileCard.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: size.height * 0.2,
            top: size.height * 0.08,
          ),
          child: Column(
            children: [
              profileCard(
                imagePath: "assets/profile.png",
                name: "Pranav Goswami",
                occupation: "Flutter Developer",
              ),
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Overview",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(FeatherIcons.bell),
                  Spacer(),
                  Text(
                    "June 20, 2022",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              expenditureCard(
                icon: Icon(
                  FeatherIcons.arrowUp,
                  color: Colors.black,
                  size: 20,
                ),
                amount: "\$150",
                description: "Sending payment to clients",
                status: "Sent",
              ),
              SizedBox(height: 20),
              expenditureCard(
                icon: Icon(
                  FeatherIcons.arrowDown,
                  color: Colors.black,
                  size: 20,
                ),
                amount: "\$250",
                description: "Received salary from company",
                status: "Receive",
              ),
              SizedBox(height: 20),
              expenditureCard(
                icon: Icon(
                  FeatherIcons.dollarSign,
                  color: Colors.black,
                  size: 20,
                ),
                amount: "\$400",
                description: "Loan for car",
                status: "Loan",
              ),
              SizedBox(height: 20),
              expenditureCard(
                icon: Icon(
                  FeatherIcons.arrowDown,
                  color: Colors.black,
                  size: 20,
                ),
                amount: "\$4000",
                description: "First Salary",
                status: "Receive",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
