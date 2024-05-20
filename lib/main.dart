import 'package:anagis/screens/login.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(AnaGis());
}

class AnaGis extends StatelessWidget {
  const AnaGis({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
