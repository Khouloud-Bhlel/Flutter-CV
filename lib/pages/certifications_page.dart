import 'package:flutter/material.dart';
import 'app_localizations.dart';
class CertificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Certifications'),
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
                localizations.translate('Coursera Project Network'),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                localizations.translate('Create an A/B web page marketing test with Google Optimize | 29 August 2022'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),

              Image.asset(
                'images/k.png', // Remplacez par le chemin de l'image dans votre projet
                width: 300, // Ajustez la largeur de l'image selon vos besoins
                height: 220, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Text(
                localizations.translate('wordpressFreeWebsite'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Image.asset(
                'images/i.png', // Remplacez par le chemin de l'image dans votre projet
                width: 300, // Ajustez la largeur de l'image selon vos besoins
                height: 220, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Text(
                localizations.translate('canvaProject'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),

              Image.asset(
                'images/d.png', // Remplacez par le chemin de l'image dans votre projet
                width: 300, // Ajustez la largeur de l'image selon vos besoins
                height: 220, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Text(
                localizations.translate('chatbotProject'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Image.asset(
                'images/j.png', // Remplacez par le chemin de l'image dans votre projet
                width: 300, // Ajustez la largeur de l'image selon vos besoins
                height: 220, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Text(
                localizations.translate('wordpressProject'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Image.asset(
                'images/h.png', // Remplacez par le chemin de l'image dans votre projet
                width: 300, // Ajustez la largeur de l'image selon vos besoins
                height: 220 ,// Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'freeCodeCamp',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                localizations.translate('freeCodeCampCertification'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Image.asset(
                'images/m.png', // Remplacez par le chemin de l'image dans votre projet
                width: 300, // Ajustez la largeur de l'image selon vos besoins
                height: 220 ,// Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                localizations.translate('certificateOfAchievement'),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                localizations.translate('3STraining'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Text(
                localizations.translate('bestSARLTraining'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),

              SizedBox(height: 20),
              Text(
                'Certificate of Achievement',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Certification on the program DigiWord by Spectrum in:',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Text(
                localizations.translate('digiWordCertification'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 20),
              Text(
                'cognitiveclass.ai',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Certification Powered by IBM Developer Skills Network:',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
                      Text('Accessing Hadoop Data Using Hive',style: TextStyle(fontStyle: FontStyle.italic),
                ),
              Image.asset(
                'images/c.png', // Remplacez par le chemin de l'image dans votre projet
                width: 300, // Ajustez la largeur de l'image selon vos besoins
                height: 220 ,// Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
                  Text(' Big Data 101',style: TextStyle(fontStyle: FontStyle.italic),),
              Image.asset(
                'images/b.png', // Remplacez par le chemin de l'image dans votre projet
                width: 300, // Ajustez la largeur de l'image selon vos besoins
                height: 220 ,// Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
                  Text( 'Cloud Kubernetes',  style: TextStyle(fontStyle: FontStyle.italic),),
              Image.asset(
                'images/a.png', // Remplacez par le chemin de l'image dans votre projet
                width: 300, // Ajustez la largeur de l'image selon vos besoins
                height: 220 ,// Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
                  Text( ' Controlling Hadoop Jobs using Oozie',  style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Image.asset(
                'images/l.png', // Remplacez par le chemin de l'image dans votre projet
                width: 300, // Ajustez la largeur de l'image selon vos besoins
                height: 220 ,// Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
                  Text(' Hadoop 101, ',  style: TextStyle(fontStyle: FontStyle.italic),),
              Image.asset(
                'images/g.png', // Remplacez par le chemin de l'image dans votre projet
                width: 300, // Ajustez la largeur de l'image selon vos besoins
                height: 220 ,// Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Text(
                localizations.translate('cognitiveclass.ai'),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'images/f.png', // Remplacez par le chemin de l'image dans votre projet
                width: 300, // Ajustez la largeur de l'image selon vos besoins
                height: 220 ,// Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Text(
                localizations.translate('cognitiveClassCertification'),
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Image.asset(
                'images/e.png', // Remplacez par le chemin de l'image dans votre projet
                width: 300, // Ajustez la largeur de l'image selon vos besoins
                height: 220 ,// Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              // Add more certification information as needed
            ],
          ),
        ),
      ),
    );
  }
}

