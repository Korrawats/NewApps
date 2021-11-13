import 'package:election_exit_poll_07610567/pages/home/home_page.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'pages/news/news_details_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewsApp',
      theme: ThemeData(
        fontFamily: GoogleFonts.prompt().fontFamily,
        primarySwatch: Colors.purple,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 22.0,
            //fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      //home: LoginPage(),
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        NewsDetailsPage.routeName: (context) => const NewsDetailsPage(),
      },
      initialRoute: HomePage.routeName,
    );
  }
}
