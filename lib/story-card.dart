import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          color: storySetting.backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.contain,
                    image: AssetImage(storySetting.getMainImage()),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        story.title,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: storySetting.textColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        DateFormat('dd/MM').format(story.updated),
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(231, 213, 179, 0.8),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
