// import 'dart:ui';

import 'package:flutter/material.dart';

class Grade {
  final String label;
  final Color color;

  Grade(this.label, this.color);
}

Grade getGrade(int grade) {
  if (grade >= 90) {
    return Grade('A+', Colors.green);
  } else if (grade >= 85) {
    return Grade('A', Colors.green);
  } else if (grade >= 80) {
    return Grade('A-', Colors.green);
  } else if (grade >= 75) {
    return Grade('B+', Colors.yellow);
  } else if (grade >= 70) {
    return Grade('B', Colors.yellow);
  } else if (grade >= 65) {
    return Grade('B-', Colors.yellow);
  } else {
    return Grade('C', Colors.red);
  }
}