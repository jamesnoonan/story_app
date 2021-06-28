import 'package:flutter/material.dart';
import 'package:story_app/data/setting-data.dart';
import 'package:story_app/data/story-data.dart';

class StoryView extends StatefulWidget {
  final StoryItem story;
  StoryView({Key key, this.story}) : super(key: key);

  @override
  _StoryViewState createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  @override
  Widget build(BuildContext context) {
    SettingItem setting = SettingData.settingData[widget.story.setting];

    return Scaffold(
      backgroundColor: Color.fromRGBO(35, 21, 39, 1),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.contain,
            image: AssetImage(setting.getMainImage()),
          ),
        ),
        child: ListView(
          children: [
            SizedBox.fromSize(
              size: Size(MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.width * (12 / 16)),
            ),
            Image.asset(setting.getParallaxImage()),
            Container(
              transform: Matrix4.translationValues(0.0, -20.0, 0.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(35, 21, 39, 1),
              ),
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.story.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          "by " + widget.story.author,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          widget.story.body,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.white,
                            height: 1.3,
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
