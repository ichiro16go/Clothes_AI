import 'package:flutter/material.dart';

class CalenderAndCoordinatePage extends StatefulWidget {
  @override
  State<CalenderAndCoordinatePage> createState() => _CalenderAndCoordinatePageState();
}

class _CalenderAndCoordinatePageState extends State<CalenderAndCoordinatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text('calender'),
      ),
    );
  }
}
