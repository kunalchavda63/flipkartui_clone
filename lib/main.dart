import 'package:flutter/material.dart';

import 'clone.dart';
void main(){
  runApp(app());
}
class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      darkTheme: ThemeData.dark(

      ),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: clone(),
    );
  }
}
