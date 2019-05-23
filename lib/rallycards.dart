import 'package:flutter/material.dart';

class RallyAlertCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Alerts',
                  style: Theme.of(context).textTheme.subtitle,
                ),
                FlatButton(onPressed: () {}, child: Text('See All')),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
              child: Divider(height: 2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Heads up, you've used up 90% of your\n" +
                      "Shopping budget for this month.",
                  style: Theme.of(context).textTheme.body1,
                ),
                FlatButton(onPressed: () {}, child: Text('Sort')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RallyAccountsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text('RallyAccountsCard placeholder'),
    );
  }
}

class RallyBillsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text('RallyBillsCard placeholder'),
    );
  }
}
