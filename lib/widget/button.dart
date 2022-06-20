import 'package:flutter/material.dart';

class button extends StatefulWidget {
  Function? onPressedFunction;
  String? hintText;

  button({required this.onPressedFunction, required this.hintText});
  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => widget.onPressedFunction!,
      elevation: 0,
      padding: EdgeInsets.all(18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: Colors.indigo[700],
      child: Center(
        child: Text(
          widget.hintText!,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
