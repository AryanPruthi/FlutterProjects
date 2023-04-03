// ignore_for_file: implementation_imports, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class scalescreen extends StatelessWidget {
  const scalescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,23,189,169),

    body: Container(
          decoration: const BoxDecoration (
            image: DecorationImage(image: NetworkImage('https://www.researchgate.net/profile/Selcuk-Nas/publication/320067348/figure/tbl2/AS:614180059090945@1523443345088/Classification-of-body-mass-according-to-body-mass-index-BMI.png'),
            ),
        ),

    ),
    );
  }
}