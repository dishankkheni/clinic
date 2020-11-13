import 'package:clinicapp2/EHR_files.dart';
import 'package:clinicapp2/accountsettings.dart';
import 'package:clinicapp2/articles_grid.dart';
import 'package:clinicapp2/try.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ArticlesGrid(),
    );
  }
}

//0xff6574CF
