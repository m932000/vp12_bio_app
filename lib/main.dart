import 'package:flutter/material.dart';
import 'package:vp12_bio_app/Screen/BioScreen.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: BioScreen(),


    );
  }
}
