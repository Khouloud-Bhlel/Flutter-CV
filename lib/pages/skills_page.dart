import 'package:flutter/material.dart';
import 'app_localizations.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.translate('skills')),
        backgroundColor: Colors.black38,

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                localizations.translate('programmingLanguages'),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                localizations.translate('programmingLanguagesList'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 20),
              Text(
                localizations.translate('softwareAndTools'),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                localizations.translate('softwareAndToolsList'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 20),
              Text(
                localizations.translate('otherSkills'),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                localizations.translate('otherSkillsList'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              // Add more skills information as needed
            ],
          ),
        ),
      ),
    );
  }
}
