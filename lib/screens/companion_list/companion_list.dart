import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CompanionList extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String gender;
  final DateTime dob;
  final String occupation;
  final DateTime date;

  CompanionList({
    @required this.name, 
    @required this.imageUrl, 
    @required this.gender, 
    @required this.dob, 
    @required this.occupation, 
    @required this.date
  });

  void selectCompanion(){

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectCompanion,
      child: Container(
        child: Card(
            color: Colors.blue[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            elevation: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      child: Image.network(
                        imageUrl,
                        height: 351,
                        width: double.infinity,
                        fit: BoxFit.cover
                      ),
                    ),
                    Positioned(
                      right: 2,
                      child: IconButton(
                        icon: Icon(Icons.favorite), 
                        iconSize: 32,
                        color: Colors.white60,
                        onPressed: (){}
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                      width: 170,
                      padding: const EdgeInsets.only(top: 20,left: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15)
                        ),
                        color: Colors.black54
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Name: ',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              Text(
                                name, 
                                style: Theme.of(context).textTheme.headline3,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Gender: ',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              Text(
                                gender, 
                                style: Theme.of(context).textTheme.headline3,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'D.O.B.: ',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              Text(
                                DateFormat.yMMMd().format(date), 
                                style: Theme.of(context).textTheme.headline3,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Occupation: ',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              Text(
                                occupation, 
                                style: Theme.of(context).textTheme.headline3,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Date: ',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              Text(
                                DateFormat.yMMMd().format(date), 
                                style: Theme.of(context).textTheme.headline3,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                  ]
                ),
                
              ],
            ),   
          ),
      ),
      );
  }
}