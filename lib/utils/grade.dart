// import 'dart:ui';

import 'package:flutter/material.dart';

class Grade {
  final String label;
  final Color color;

  Grade(this.label, this.color);
}

Grade getGrade(int grade) {
  int maxGrade = 100;
  int minGrade = 0;
  double percentage = 1 - ((grade - minGrade) / (maxGrade - minGrade));
  Color color = Color.lerp(Colors.green, Colors.red, percentage)!;
  color = color.withOpacity(0.8); // Menambahkan kecerahan warna

  if (grade >= 90) {
    return Grade('A+', color);
  } else if (grade >= 85) {
    return Grade('A', color);
  } else if (grade >= 80) {
    return Grade('A-', color);
  } else if (grade >= 75) {
    return Grade('B+', color);
  } else if (grade >= 70) {
    return Grade('B', color);
  } else if (grade >= 65) {
    return Grade('B-', color);
  } else if(grade >= 60){
    return Grade('C+', color);
  } else if(grade >= 55){
    return Grade('C', color);
  } else if(grade >= 50){
    return Grade('C-', color);
  } else if(grade > 45){
    return Grade('D+', color);
  } else{
    return Grade('D', color);
  }
}