import 'package:flutter/material.dart';
import 'package:flutter_twitter_profile/screens/twitter_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue.shade200),
        useMaterial3: true,
      ),
      home: const TwitterProfileHeader(),
    );
  }
}
