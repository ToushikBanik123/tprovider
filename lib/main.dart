import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ptest/Provider/numberProvider.dart';
import 'package:ptest/Screens/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>numberProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: test(),
      ),
    );
  }
}
