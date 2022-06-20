import 'package:flutter/material.dart';

class expenditure extends StatefulWidget {
  String? amount;
  String? as;

  expenditure({required this.amount, required this.as});
  @override
  State<expenditure> createState() => _expenditureState();
}

class _expenditureState extends State<expenditure> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.amount!,
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 18,
          ),
        ),
        Text(
          widget.as!,
          style: TextStyle(
            color: Colors.black,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
