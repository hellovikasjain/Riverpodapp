import 'package:apps/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main(){
   runApp(const ProviderScope(child: Riverpoddemo()));
}
class Riverpoddemo extends StatelessWidget {
  const Riverpoddemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
