import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:story_app/data/setting-data.dart';
import 'package:story_app/data/story-data.dart';
import 'package:story_app/story-view.dart';

class StoryCard extends StatelessWidget {
  final StoryItem story;

  const StoryCard({Key key, this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingItem storySetting = SettingData.settingData[story.setting];
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => StoryView(
                  story: story,
                )));
      },
      child: Container(
        decoration: BoxDecoration(
          color: storySetting.color,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              fit: BoxFit.contain,
              image: AssetImage(storySetting.getMainImage()),
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                story.title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                DateFormat('dd/MM').format(story.updated),
                style: TextStyle(fontSize: 18, color: Colors.white60),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
