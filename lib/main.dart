import 'package:flutter/material.dart';
import 'package:story_app/story-card.dart';

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
                style: TextStyle(
                    fontSize: 38, color: Color.fromRGBO(50, 50, 50, 1)),
              ),
            ),
            StoryCard(title: 'Night at the Lighthouse', date: DateTime.now()),
            StoryCard(title: 'The Last Day', date: DateTime.now()),
            StoryCard(title: 'Night at the Lighthouse', date: DateTime.now()),
            StoryCard(title: 'The Last Day', date: DateTime.now()),
            StoryCard(title: 'Night at the Lighthouse', date: DateTime.now()),
            StoryCard(title: 'The Last Day', date: DateTime.now()),
            StoryCard(title: 'Night at the Lighthouse', date: DateTime.now()),
            StoryCard(title: 'The Last Day', date: DateTime.now()),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
