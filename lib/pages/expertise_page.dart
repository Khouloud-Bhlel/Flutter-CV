import 'package:flutter/material.dart';
import 'app_localizations.dart';
class ExpertisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.translate('expertise')),
        backgroundColor: Colors.black38,

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                localizations.translate('businessInternshipTitle'),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                localizations.translate('businessInternshipDate'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Text(
                localizations.translate('businessInternshipDescription'),
              ),
              SizedBox(height: 20),
              Text(
                localizations.translate('companyInternshipTitle'),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                localizations.translate('companyInternshipDate'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Text(
                localizations.translate('companyInternshipDescription'),
              ),
              // Add more expertise and skills information as needed
            ],
          ),
        ),
      ),
    );
  }
}
