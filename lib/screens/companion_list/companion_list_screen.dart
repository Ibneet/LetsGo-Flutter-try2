import 'package:flutter/material.dart';

import '../companion_list/companion_list.dart';
import '../../dummy_data.dart';

class CompanionListScreen extends StatelessWidget {
  final String journeyId;
  final String jFrom;
  final String jTo;
  final DateTime jDate;

  CompanionListScreen(this.journeyId, this.jFrom, this.jTo, this.jDate);

  @override
  Widget build(BuildContext context) {

    final companions = dummyUsers.where(
      (companion) {
        if(companion.from == jFrom){
          if(companion.to == jTo){
            if(companion.date.difference(jDate).inDays == 0){
              return true;
            }
          }
        }
        return false;
      }
    ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('$jFrom - $jTo'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.only(top: 20),
        itemBuilder: (ctx, index){
          return CompanionList(
            name: companions[index].name, 
            imageUrl: companions[index].imageUrl, 
            gender: companions[index].gender, 
            dob: companions[index].dob, 
            occupation: companions[index].occupation, 
            date: companions[index].date
          );
        }, 
        itemCount: companions.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 1/2.25,
          crossAxisSpacing: 1,
          mainAxisSpacing: 10
        ),
       )
    );
  }
}