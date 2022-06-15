import 'package:flutter/material.dart';
import 'package:bunnie/app/utils/bunnie_colors.dart';

var appBar = AppBar(
  title: Row(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Image.asset(
        'assets/images/logo.png',
        height: 50,
      ),
      const Text(
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
  backgroundColor: const Color(0x00ffffff),
);

var secundaryAppBar = AppBar(
  title: const Text(
    'Bunnie',
    style: TextStyle(
      fontSize: 24,
      color: BunnieColors.main,
      fontWeight: FontWeight.w600,
    ),
  ),
  centerTitle: true,
  elevation: 0,
  backgroundColor: const Color(0x00ffffff),
);
