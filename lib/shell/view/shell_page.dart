import 'package:flutter/material.dart';

class ShellPage extends StatelessWidget {
  const ShellPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ShellView();
  }
}

class ShellView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('IDelub'), centerTitle: true),
        body: Container());
  }
}
