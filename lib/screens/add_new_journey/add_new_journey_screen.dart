import 'package:flutter/material.dart';

class AddNewJourneyScreen extends StatefulWidget {
  @override
  _AddNewJourneyScreenState createState() => _AddNewJourneyScreenState();
}

class _AddNewJourneyScreenState extends State<AddNewJourneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Journey'),
      ),
      body: Center(
        child: Text(
          'Add new journey.'
        ),
      ),
    );
  }
}