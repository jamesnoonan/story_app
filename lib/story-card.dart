import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StoryCard extends StatelessWidget {
  final String title;
  final DateTime date;

  const StoryCard({Key key, this.title, this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(title);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Text(
              DateFormat('dd/MM').format(date),
              style: TextStyle(fontSize: 18, color: Colors.white60),
            ),
          ],
        ),
      ),
    );
  }
}
