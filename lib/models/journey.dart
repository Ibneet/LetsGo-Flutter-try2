import 'package:flutter/material.dart';

class Journey{
  final String jid;
  final String from;
  final String to;
  final DateTime date;

  Journey({
    @required this.jid,
    @required this.from,
    @required this.to,
    @required this.date
  });
}

