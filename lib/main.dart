import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/input.dart';
import 'pages/result_page.dart';

void main() => runApp(
      GetMaterialApp(
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => InputPage()),
          GetPage(name: '/result', page: () => ResultPage())
        ],
        title: 'BMI Calculator 2',
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0C22),
          scaffoldBackgroundColor: Color(0xFF2C273D),
          accentColor: Color(0xFFEB1556),
        ),
      ),
    );
