import 'package:flutter/material.dart';
import 'app_localizations.dart';

class LanguagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.translate('languages')),
        backgroundColor: Colors.black38,

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                localizations.translate('languages'),
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              _buildLanguageItem(localizations.translate('arabicLanguage'), 1), // Remplacez 0.8 par votre niveau de compétence
              _buildLanguageItem(localizations.translate('frenchLanguage'), 0.7), // Remplacez 0.9 par votre niveau de compétence
              _buildLanguageItem(localizations.translate('englishLanguage'), 0.85), // Replace 0.95 with your proficiency level
              // Add more languages as needed
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageItem(String language, double proficiency) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          language,
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 5),
        LinearProgressIndicator(
          value: proficiency, // Set the proficiency level here
          backgroundColor: Colors.grey,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Customize the progress bar color
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
