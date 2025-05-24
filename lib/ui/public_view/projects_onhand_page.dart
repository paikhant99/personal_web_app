import 'package:flutter/material.dart';
import 'package:my_portfolios/models/network_models.dart';
import 'package:my_portfolios/ui/public_view/projects_onhand_page_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsOnhandPage extends StatefulWidget {
  static const String routeName = 'projects_onhand_page';

  const ProjectsOnhandPage({super.key});

  @override
  State<ProjectsOnhandPage> createState() => _ProjectsOnhandPageState();
}

class _ProjectsOnhandPageState extends State<ProjectsOnhandPage> {
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    Provider.of<ProjectsOnhandPageViewmodel>(context, listen: false)
        .loadProjectsOnhand();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Welcome',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
        Consumer<ProjectsOnhandPageViewmodel>(
            builder: (context, projectsOnhandPageVM, child) {
          return Expanded(
            child: GridView.count(
                crossAxisCount: (size.width / 400).round(),
                children: projectsOnhandPageVM.repos.map((repo) {
                  var icon = switch (repo.appUrlType) {
                    TypeOfUrl.View => Icons.visibility,
                    TypeOfUrl.Download => Icons.download,
                    TypeOfUrl.Progress => Icons.visibility_off,
                  };

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: SizedBox(
                        width: 400,
                        height: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: FadeInImage.memoryNetwork(
                                placeholder: kTransparentImage,
                                image: repo.templateImageUrl,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(repo.repositoryTitle),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Languages : ${repo.writtenLangs.join(',')}"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Platforms : ${repo.platforms.join(",")}"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: TextButton.icon(
                                    icon: Icon(icon),
                                    onPressed: () async {
                                      Uri url = Uri.parse(repo.appUrl);
                                      if (!await launchUrl(url,
                                          webOnlyWindowName: "_self")) {
                                        throw Exception(
                                            'Could not launch $url');
                                      }
                                    },
                                    label: Text(
                                      repo.appUrlType.name,
                                      style: const TextStyle(
                                          decoration: TextDecoration.underline),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList()),
          );
        })
      ],
    );
  }
}
