import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import '../config/global.params.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app_localizations.dart';

String mode = "Jour";
FirebaseDatabase fire = FirebaseDatabase.instance;
DatabaseReference ref = fire.reference();

class ParametersPage extends StatefulWidget {
  @override
  _ParametersPageState createState() => _ParametersPageState();
}

class _ParametersPageState extends State<ParametersPage> {
  @override
  Widget build(BuildContext context) {
    var localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.translate('settingsTitle')),
        backgroundColor: Colors.black38,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(localizations.translate('mode'), style: Theme.of(context).textTheme.headline3),
          Column(
            children: <Widget>[
              ListTile(
                title: Text(localizations.translate('day')),
                leading: Radio<String>(
                  value: "Jour",
                  groupValue: mode,
                  onChanged: (value) {
                    setState(() {
                      mode = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(localizations.translate('night')),
                leading: Radio<String>(
                  value: "Nuit",
                  groupValue: mode,
                  onChanged: (value) {
                    setState(() {
                      mode = value!;
                    });
                  },
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                _onSaveMode();
              },
              child: Text(localizations.translate('saveButton'), style: TextStyle(fontSize: 22)),
            ),
          ),
        ],
      ),
    );
  }

  void _onSaveMode() async {
    GlobalParams.themeActuel.setMode(mode);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('mode', mode);
    print("Mode saved: $mode");
    Navigator.pop(context);
  }

}
