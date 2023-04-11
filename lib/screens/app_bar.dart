import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBar(
        title: Text('SApp'),
      ),
    );
  }
}
