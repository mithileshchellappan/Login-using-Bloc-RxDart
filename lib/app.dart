import 'package:bloc_test/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'blocs/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Provider(
      child:MaterialApp(
      title: 'Log',
      home: Scaffold(
        body: LoginScreen(),),
    ),
    );
    
  }
}