import 'package:flutter/material.dart';
import 'app_localizations.dart';

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Educationn'),
        backgroundColor: Colors.black38,

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              SizedBox(height: 20),
              Text(
                localizations.translate('isetSfax'),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                localizations.translate('isetSfaxDescription'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 20),
              Text(
                localizations.translate('lyceeMenzeh6'),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                localizations.translate('lyceeMenzeh6Description'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              // Add more education information as needed
            ],
          ),
        ),
      ),
    );
  }
}
