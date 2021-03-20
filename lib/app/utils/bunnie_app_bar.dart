import 'package:flutter/material.dart';
import 'package:rabbited/app/utils/bunnie_colors.dart';

var appBar = AppBar(
  title: Row(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Image.asset(
        'assets/images/logo.png',
        height: 50,
      ),
      Text(
        'Bunnie',
        style: TextStyle(
          fontSize: 24,
          color: BunnieColors.main,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  ),
  centerTitle: true,
  elevation: 0,
  backgroundColor: Color(0xFFFFFF),
);

var secundaryAppBar = AppBar(
  title: Text(
    'Bunnie',
    style: TextStyle(
      fontSize: 24,
      color: BunnieColors.main,
      fontWeight: FontWeight.w600,
    ),
  ),
  centerTitle: true,
  elevation: 0,
  backgroundColor: Color(0xFFFFFF),
);
