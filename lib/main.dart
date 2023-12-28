import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:projectcv/pages/app_localizations.dart';
import 'package:projectcv/pages/home_page.dart';
import 'package:projectcv/pages/parametres.page.dart';
import 'package:projectcv/pages/summary_page.dart';
import 'package:projectcv/pages/expertise_page.dart';
import 'package:projectcv/pages/project_page.dart';
import 'package:projectcv/pages/skills_page.dart';
import 'package:projectcv/pages/education_page.dart';
import 'package:projectcv/pages/certifications_page.dart';
import 'package:projectcv/pages/languages_page.dart';
import 'config/global.params.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData theme = ThemeData.light();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();
  GlobalParams.themeActuel.setMode(await _onGetMode());
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    GlobalParams.themeActuel.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: GlobalParams.themeActuel.getTheme(), // Use the theme based on mode
      darkTheme: ThemeData.dark(), // Add dark theme
      themeMode: GlobalParams.themeActuel.getMode(),

      localizationsDelegates: [
        AppLocalizations.delegate,  // Add the AppLocalizations delegate
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('fr', 'FR'),
        Locale('ar', 'AR'),
      ],
      home: HomePage(),
      routes: {
        '/summary': (context) => SummaryPage(),
        '/expertise': (context) => ExpertisePage(),
        '/project': (context) => ProjectPage(),
        '/skills': (context) => SkillsPage(),
        '/education': (context) => EducationPage(),
        '/certifications': (context) => CertificationsPage(),
        '/languages': (context) => LanguagesPage(),
        '/parameters': (context) => ParametersPage(),


      },
    );
  }
}

Future<String> _onGetMode() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String mode = prefs.getString('mode') ?? "jour";
  print(mode);
  return mode;
}