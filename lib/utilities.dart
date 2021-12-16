import 'package:flutter/material.dart';

Color paint(String time) {
  var color = Colors.black;
  if (time == 'yesterday') {
    color = Colors.pink;
  } else if (time == 'today') {
    color = Colors.blue;
  } else {
    color = Colors.grey;
  }
  return color;
}
