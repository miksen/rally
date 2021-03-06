import 'package:flutter/material.dart';

// TODO: This is not integrated with the theme
const cardInternalColor = Color(0xFF33333D);

/**
 * The Alerts card within the Rally Overview screen.
 */
class RallyAlertCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardInternalColor,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Alerts', style: Theme.of(context).textTheme.subtitle),
                FlatButton(onPressed: () {}, child: Text('See all')),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
              child: Divider(
                color: Theme.of(context).backgroundColor,
                height: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Heads up, you've used up 90% of your " +
                        "Shopping budget for this month.",
                    style: Theme.of(context).textTheme.body1,
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text('Sort'),
                ),
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
      color: cardInternalColor,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: <Widget>[
                Text('Accounts', style: Theme.of(context).textTheme.body1),
                Text('\$12,132.49',
                    style: Theme.of(context).textTheme.headline),
              ],
            ),
          ),
          Divider(
            color: Theme.of(context).accentColor,
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: <Widget>[
                RallyAccountRow(
                  name: 'Checking',
                  number: '1234',
                  amount: '2,215.13',
                  color: Color(0xFF005D57),
                ),
                Divider(color: Theme.of(context).backgroundColor, height: 2),
                RallyAccountRow(
                  name: 'Home Savings',
                  number: '5678',
                  amount: '8,676.88',
                  color: Color(0xFF04B97F),
                ),
                Divider(color: Theme.of(context).backgroundColor, height: 2),
                RallyAccountRow(
                  name: 'Car Savings',
                  number: '9012',
                  amount: '987.483',
                  color: Color(0xFF37EFBA),
                ),
                Divider(color: Theme.of(context).backgroundColor, height: 2),
                FlatButton(
                  onPressed: () {},
                  child: Text('See all'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RallyAccountRow extends StatelessWidget {
  const RallyAccountRow({this.name, this.number, this.amount, this.color});

  final String name;
  final String number;
  final String amount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
      child: Row(
        children: <Widget>[
          AccountIndicator(color: color),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(name, style: Theme.of(context).textTheme.body1),
              Text('•••••$number', style: Theme.of(context).textTheme.subtitle),
            ],
          ),
          Expanded(child: Container()),
          Text('\$ $amount', style: Theme.of(context).textTheme.body2),
        ],
      ),
    );
  }
}

class AccountIndicator extends StatelessWidget {
  const AccountIndicator({this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(color: color, width: 4, height: 36);
  }
}

class RallyBillsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardInternalColor,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: <Widget>[
                Text('Bills', style: Theme.of(context).textTheme.subtitle),
                Text('\$1,810', style: Theme.of(context).textTheme.display2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
