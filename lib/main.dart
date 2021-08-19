import 'package:flutter/material.dart';
import 'package:profile/mainSection.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'home/mobileHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainSection(),
    );
  }
}
