import 'package:flutter/material.dart';
import 'app_localizations.dart';

class SummaryPage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.translate('professionalSummary')),
        backgroundColor: Colors.black38,

      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                localizations.translate('isetSfax'),
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Text(
                localizations.translate('isetSfaxDate'),
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 20),
              Text(
                localizations.translate('anticipatedPFE'),
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollController.animateTo(
            0,
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
        },
        child: Icon(Icons.arrow_upward),
      ),
    );
  }
}
