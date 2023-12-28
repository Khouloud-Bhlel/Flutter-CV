import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:projectcv/pages/summary_page.dart';
import 'app_localizations.dart';  // Import the AppLocalizations class

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late GoogleMapController mapController;

  static const LatLng _center = const LatLng(36.860487, 10.193930);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  // Placeholder method for changing the locale
  void _changeLocale(Locale newLocale) {
    // Replace this with your logic for changing the app's language
    // For example, you might use a package like 'intl' to handle translations
    // This is just a placeholder example
    print('Selected language: ${newLocale.languageCode}');
  }

  @override
  Widget build(BuildContext context) {
    var localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.translate('appName')),
        backgroundColor: Colors.black38,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/parameters');
            },
          ),
          DropdownButton(
            onChanged: (Locale? newLocale) {
              if (newLocale != null) {
                _changeLocale(newLocale);
              }
            },
            items: [
              DropdownMenuItem(
                value: Locale('en', 'US'),
                child: Text('English'),
              ),
              DropdownMenuItem(
                value: Locale('fr', 'FR'),
                child: Text('French'),
              ),
              DropdownMenuItem(
                value: Locale('ar', 'AR'),
                child: Text('Arabic'),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/profil.png'),
                  radius: 50,
                ),
                SizedBox(height: 10),
                Text(
                localizations.translate('name'),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  localizations.translate('education'),
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),

                Text(
                  localizations.translate('contactInformation'),
                  style: TextStyle(fontSize: 20, color: Color(0xFF7642CECA)),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: Image.asset(
                        'images/location_icon.png',
                        width: 30,
                        height: 30,
                      ),
                      onPressed: () {
                        _launchMapsUrl();
                      },
                    ),
                    IconButton(
                      icon: Image.asset(
                        'images/linkedin_icon.png',
                        width: 30,
                        height: 30,
                      ),
                      onPressed: () {
                        launch('https://www.linkedin.com/in/khouloud-ben-hlel-b4b069236/');
                      },
                    ),
                    IconButton(
                      icon: Image.asset(
                        'images/github_icon.png',
                        width: 30,
                        height: 30,
                      ),
                      onPressed: () {
                        launch('https://github.com/khouloudbh23');
                      },
                    ),
                    IconButton(
                      icon: Image.asset(
                        'images/instagram_icon.png',
                        width: 30,
                        height: 30,
                      ),
                      onPressed: () {
                        launch('https://www.instagram.com/khouloudbenhlel/');
                      },
                    ),
                    IconButton(
                      icon: Image.asset(
                        'images/facebook_icon.png',
                        width: 30,
                        height: 30,
                      ),
                      onPressed: () {
                        launch('https://www.facebook.com/malak.maluka.98/');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(width: 25),
              Container(
                width: 45,
                height: 45,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SummaryPage()),
                    );
                  },
                  child: Icon(Icons.person_rounded),
                ),
              ),
              SizedBox(width: 5), // Add space between icons
              Container(
                width: 45,
                height: 45,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/expertise');
                  },
                  child: Icon(Icons.work),
                ),
              ),
              SizedBox(width: 5), // Add space between icons
              Container(
                width: 45,
                height: 45,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/project');
                  },
                  child: Icon(Icons.business),
                ),
              ),
              SizedBox(width: 5), // Add space between icons
              Container(
                width: 45,
                height: 45,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/skills');
                  },
                  child: Icon(Icons.lightbulb),
                ),
              ),
              SizedBox(width: 5), // Add space between icons
              Container(
                width: 45,
                height: 45,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/education');
                  },
                  child: Icon(Icons.school),
                ),
              ),
              SizedBox(width: 5), // Add space between icons
              Container(
                width: 45,
                height: 45,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/certifications');
                  },
                  child: Icon(Icons.star),
                ),
              ),
              SizedBox(width: 5), // Add space between icons
              Container(
                width: 45,
                height: 45,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/languages');
                  },
                  child: Icon(Icons.language),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Function to open Google Maps
  void _launchMapsUrl() async {
    const url =
        'https://www.google.com/maps/search/?api=1&query=36.860487,10.193930';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
