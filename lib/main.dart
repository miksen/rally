import 'package:flutter/material.dart';

import 'rallytheme.dart';
import 'rallycards.dart';

void main() => runApp(RallyApp());

class RallyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rally',
      theme: buildRallyThemeData(context),
      home: RallyHome(),
    );
  }
}

class RallyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context), body: buildBody(context));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text('Overview'),
      centerTitle: false,
    );
  }

  Widget buildBody(BuildContext context) {
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
