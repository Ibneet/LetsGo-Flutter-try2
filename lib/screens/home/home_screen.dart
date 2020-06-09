import 'package:flutter/material.dart';

import '../../dummy_data.dart';
import './each_journey.dart';
import '../add_new_journey/add_new_journey_screen.dart';


class HomeScreen extends StatelessWidget {

  void addJourney(ctx){
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_){
          return AddNewJourneyScreen();
        })
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LetsGo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => addJourney(context),
          )
        ],
      ),
      body: GridView(
          padding: EdgeInsets.all(25),
          children: dummyJourneys
            .map((jData) => EachJourney(
              jData.jid,
              jData.from,
              jData.to,
              jData.date
            )
          ).toList(), 
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
          ),
        ),
    ); 
  }
}