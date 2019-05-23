import 'package:flutter/material.dart';

import 'rallycards.dart';

void main() => runApp(RallyApp());

class RallyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rally',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RallyHome(),
    );
  }
}

class RallyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: buildBody());
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('Overview'),
    );
  }

  Widget buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          RallyAlertCard(),
          RallyAccountsCard(),
          RallyBillsCard(),
        ],
      ),
    );
  }
}
