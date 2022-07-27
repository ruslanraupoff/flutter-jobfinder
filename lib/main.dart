import 'package:app/jobfinderfive/main.dart';
import 'package:app/jobfinderfour/main.dart';
import 'package:app/jobfinderone/main.dart';
import 'package:app/jobfinderthree/main.dart';
import 'package:app/jobfindertwo/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'jobfinderone/size_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Job Finder App List',
          home: AppList(),
        );
      });
    });
  }
}

class AppList extends StatefulWidget {
  const AppList({Key? key}) : super(key: key);

  @override
  State<AppList> createState() => _AppListState();
}

class _AppListState extends State<AppList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Finder App List')
      ),
      body: ListView(
        children: [
          ExampleCard(
            title: 'Job Finder One',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const JobFinderOne()
                )
              );
            }
          ),
          ExampleCard(
            title: 'Job Finder Two',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const JobFinderTwo()
                )
              );
            }
          ),
          ExampleCard(
            title: 'Job Finder Three',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const JobFinderThree()
                )
              );
            }
          ),
          ExampleCard(
            title: 'Job Finder Four',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const JobFinderFour()
                )
              );
            }
          ),
          ExampleCard(
            title: 'Job Finder Five',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const JobFinderFive()
                )
              );
            }
          )
        ]
      )
    );
  }
}

class ExampleCard extends StatelessWidget {
  const ExampleCard({Key? key, required this.title, required this.onTap}) : super(key: key);
  final String title;
  final Function onTap;

  @override
  build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          onTap();
        },
        child: ListTile(
          title: Text(title),
        ),
      ),
    );
  }
}
