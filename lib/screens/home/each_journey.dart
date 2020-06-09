import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../companion_list/companion_list_screen.dart';

class EachJourney extends StatelessWidget {
  final String id;
  final String from;
  final String to;
  final DateTime date;

  EachJourney(this.id, this.from, this.to, this.date);

  void selectJourney(ctx){
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return CompanionListScreen(id, from, to, date);
        },
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectJourney(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue.withOpacity(0.7),
              Colors.blue[400]
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on,size: 28, color: Colors.yellow),
                    Text(from, style: Theme.of(context).textTheme.headline6),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on,size: 28, color: Colors.yellow),
                    Text(to, style: Theme.of(context).textTheme.headline6),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.date_range,size: 24, color: Colors.yellow),
                    Text(DateFormat.yMMMEd().format(date), style: Theme.of(context).textTheme.headline1),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.cancel), 
                  iconSize: 28,
                  color: Colors.grey[300],
                  onPressed: (){}
                ),
                IconButton(
                  icon: Icon(Icons.edit), 
                  iconSize: 28,
                  color: Colors.grey[300],
                  onPressed: (){}
                ),
                IconButton(
                  icon: Icon(Icons.notifications), 
                  iconSize: 28,
                  color: Colors.grey[300],
                  onPressed: (){}
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}