import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'app_localizations.dart';

class ProjectPage extends StatelessWidget {
  final List<Project> projects = [
    Project(
      name: "Projet1",
      description: "Django",
      githubLink: "https://github.com/projet1",
    ),

    // Ajoutez d'autres projets selon vos besoins
  ];

  @override
  Widget build(BuildContext context) {
    var localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.translate('projectListTitle')),
        backgroundColor: Colors.black38,
      ),
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(projects[index].name),
            subtitle: Text(projects[index].description),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _navigateToProjectDetails(context, projects[index]);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(120, 36), // Adjust size as needed
                  ),
                  child: Text(localizations.translate('viewDetails')),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    _launchURL(projects[index].githubLink);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(20, 36), // Adjust size as needed
                  ),
                  child: Text(localizations.translate('githubLink')),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _navigateToProjectDetails(BuildContext context, Project project) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Project1Page(project: project)),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Impossible d\'ouvrir le lien $url';
    }
  }
}
class Project {
  final String name;
  final String description;
  final String githubLink;

  Project({required this.name, required this.description, required this.githubLink});
}

class Project1Page extends StatelessWidget {
  final Project project; // Ajout d'un paramètre pour recevoir les détails du projet

  // Constructeur pour initialiser le projet
  Project1Page({required this.project});

  @override
  Widget build(BuildContext context) {
    var localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.translate('projectDetailsTitle')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                localizations.translate('internshipTitle'),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                localizations.translate('webDevelopmentDescription'),
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(localizations.translate('classDiagram')),
              Image.asset(
                'images/img1.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 200, // Ajustez la largeur de l'image selon vos besoins
                height: 200, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(localizations.translate('orderManagement')),
              SizedBox(height: 16),
              Image.asset(
                'images/1.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 500, // Ajustez la largeur de l'image selon vos besoins
                height: 110, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/2.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 360, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/3.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 360, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/4.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 360, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/5.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 360, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/6.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 360, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/7.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 360, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text("!!!Interface !!!"),
              SizedBox(height: 16),
              Image.asset(
                'images/8.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 360, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/11.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 300, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/12.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 300, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/13.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 360, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/14.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 360, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/15.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 360, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text("!!!Gestion de service!!!"),
              SizedBox(height: 16),
              Image.asset(
                'images/16.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 360, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text("!!!login!!!"),
              SizedBox(height: 16),
              Image.asset(
                'images/17.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 220, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text("!!!signup!!!"),
              SizedBox(height: 16),
              Image.asset(
                'images/18.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 220, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text("!!!dashbord!!!"),
              SizedBox(height: 16),
              Image.asset(
                'images/19.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 220, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/20.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 500, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/21.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 400, // Ajustez la largeur de l'image selon vos besoins
                height: 100, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/22.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 100, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/23.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 360, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/24.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 360, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/25.jpg', // Remplacez par le chemin de l'image dans votre projet
                width: 360, // Ajustez la largeur de l'image selon vos besoins
                height: 100, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Project2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(

      ),
    );
  }
}
