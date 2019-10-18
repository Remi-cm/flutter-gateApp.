<<<<<<< HEAD
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class CustomFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 100.0, height:100.0,
      child:   new FloatingActionButton(backgroundColor: GateManColors.primaryColor,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Image.asset('assets/images/gateman/residents.png'),
              ),
              Text('Residents', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),)
              ],
  
              ), onPressed: () {Navigator.pushReplacementNamed(context, '/residents-gate');},
  
              ),
      );
  }
=======
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class CustomFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 110.0, height:110.0,
      child:   new FloatingActionButton(backgroundColor: GateManColors.primaryColor,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Image.asset('assets/images/gateman/residents.png'),
              ),
              Text('Residents', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),)
              ],
  
              ), onPressed: () {Navigator.pushReplacementNamed(context, '/residents-gate');},
  
              ),
      );
  }
>>>>>>> 5234b88223c52c3c381cc6f25c57a66635e2fe3e
}