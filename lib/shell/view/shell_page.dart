import 'package:flutter/material.dart';
import 'package:idelub/l10n/l10n.dart';
import 'package:theme/theme.dart';

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
    final l10n = context.l10n;
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            centerTitle: true,
            title: TabBar(
              key: const Key('appBar-tabbar'),
              tabs: [
                BarTabText(text: l10n.homeAppBarButton.toUpperCase()),
                BarTabText(text: l10n.aboutmeAppBarButton.toUpperCase()),
                BarTabText(text: l10n.projectAppBarButton.toUpperCase()),
                BarTabText(text: l10n.contactAppBarButton.toUpperCase()),
              ],
            )),
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/img/model-8.jpg'),
                  fit: BoxFit.cover),
            ),
            child: const TabBarView(
              key: Key('shell-tabbar-view'),
              children: [
                Text('Home'),
                Text('About me'),
                Text('Projects'),
                Text('Contact'),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.grey.withOpacity(0.0),
                    ],
                    stops: [
                      0.0,
                      1.0
                    ])),
          )
        ]),
      ),
    );
  }
}

class BarTabText extends StatelessWidget {
  final String text;

  const BarTabText({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
