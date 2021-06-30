import 'package:flutter/material.dart';
import 'package:story_app/data/setting-data.dart';
import 'package:story_app/data/story-data.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryView extends StatefulWidget {
  final StoryItem story;
  StoryView({Key key, this.story}) : super(key: key);

  @override
  _StoryViewState createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  final controller = ScrollController();
  double parallaxOffset = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(onScroll);
  }

  @override
  void dispose() {
    super.dispose();
    controller.removeListener(onScroll);
  }

  onScroll() {
    setState(() {
      parallaxOffset = (-1 / 2) * controller.offset;
    });
  }

  @override
  Widget build(BuildContext context) {
    SettingItem setting = SettingData.settingData[widget.story.setting];

    return Scaffold(
      backgroundColor: setting.backgroundColor,
      body: Stack(
        children: [
          Transform(
            child: Image.asset(setting.getMainImage()),
            alignment: Alignment(0, -1),
            transform: Matrix4.translationValues(0, parallaxOffset, 0),
          ),
          ListView(
            controller: controller,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(0, 0, 0, 0.4),
                      radius: 28,
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 36,
                          color: Color.fromRGBO(231, 213, 179, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox.fromSize(
                size: Size(MediaQuery.of(context).size.width,
                    MediaQuery.of(context).size.width * (12 / 16) - 70),
              ),
              Image.asset(setting.getParallaxImage()),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(36, 21, 39, 1),
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
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color.fromRGBO(231, 213, 179, 1),
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text(
                            "by " + widget.story.author,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: setting.textColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            widget.story.body,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Color.fromRGBO(231, 213, 179, 1),
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: setting.textColor,
        onPressed: () {},
        tooltip: 'Edit Story',
        child: Icon(
          Icons.edit,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
