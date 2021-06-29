import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:story_app/story-card.dart';

import 'data/story-data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
              child: Text(
                'My Stories',
                textAlign: TextAlign.left,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Color.fromRGBO(35, 21, 39, 1),
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            ...StoryData.stories
                .map((story) => StoryCard(story: story))
                .toList()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Write a new story',
        child: Icon(
          Icons.edit,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        unselectedFontSize: 16,
        selectedFontSize: 16,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Stories",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
