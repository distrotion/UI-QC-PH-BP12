import 'package:flutter/material.dart';

import 'TEST.dart';
import 'page2.dart';
import 'page4.dart';
import 'page5.dart';

bool isChecked = false;

class Page0 extends StatelessWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page0Body();
  }
}

class Page0Body extends StatelessWidget {
  const Page0Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page4();
  }
}
