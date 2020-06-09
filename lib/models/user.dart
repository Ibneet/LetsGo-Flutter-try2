import 'package:flutter/material.dart';

class User{
  final String uid;
  final String from;
  final String to;
  final String name;
  final String gender;
  final String occupation;
  final String imageUrl;
  final DateTime dob;
  final DateTime date;

  User({
    @required this.uid,
    @required this.from,
    @required this.to,
    @required this.name,
    @required this.gender,
    @required this.occupation,
    @required this.imageUrl,
    @required this.dob,
    @required this.date
  });
}

