import 'package:flutter/material.dart';
import 'package:movielist/Details_page.dart';
import 'package:movielist/Test.dart';

import 'Moives list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies list',
      theme: ThemeData(

      ),
      initialRoute: TestFile.id,
      routes: {
        MoviesList.id: (context) => MoviesList(),
        DetailsPage.id: (context) => DetailsPage(),
        TestFile.id: (context) => TestFile(),
      },
    );
  }
}

