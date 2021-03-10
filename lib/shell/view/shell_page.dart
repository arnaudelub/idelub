import 'package:flutter/material.dart';

/// This is the entry point of the web app, it will wrap the whole application
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
