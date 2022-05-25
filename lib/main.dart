import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:coffee/Coffee.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Coffee(), debugShowCheckedModeBanner: false);
  }
}
