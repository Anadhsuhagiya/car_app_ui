import 'package:car_app_ui/Model.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class Story extends StatefulWidget {
  int index;

  Story(this.index);

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  StoryController storyView = StoryController();

  void timer() {
    Duration(seconds: 5);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        onComplete: timer,
        storyItems: [
          StoryItem.pageImage(
              url: "${Model.Story_photos[0]}",
              caption: "${Model.Story_Title[0]}",
              duration: Duration(seconds: 5),
              controller: storyView),
          StoryItem.pageImage(
              url: "${Model.Story_photos[1]}",
              caption: "${Model.Story_Title[1]}",
              duration: Duration(seconds: 5),
              controller: storyView),
          StoryItem.pageImage(
              url: "${Model.Story_photos[2]}",
              caption: "${Model.Story_Title[2]}",
              duration: Duration(seconds: 5),
              controller: storyView),
          StoryItem.pageImage(
              url: "${Model.Story_photos[3]}",
              caption: "${Model.Story_Title[3]}",
              duration: Duration(seconds: 5),
              controller: storyView),
          StoryItem.pageImage(
              url: "${Model.Story_photos[4]}",
              caption: "${Model.Story_Title[4]}",
              duration: Duration(seconds: 5),
              controller: storyView),
          StoryItem.pageImage(
              url: "${Model.Story_photos[5]}",
              caption: "${Model.Story_Title[5]}",
              duration: Duration(seconds: 5),
              controller: storyView),
          StoryItem.pageImage(
              url: "${Model.Story_photos[6]}",
              caption: "${Model.Story_Title[6]}",
              duration: Duration(seconds: 5),
              controller: storyView),
          StoryItem.pageImage(
              url: "${Model.Story_photos[7]}",
              caption: "${Model.Story_Title[7]}",
              duration: Duration(seconds: 5),
              controller: storyView),
          StoryItem.pageImage(
              url: "${Model.Story_photos[8]}",
              caption: "${Model.Story_Title[8]}",
              duration: Duration(seconds: 5),
              controller: storyView),
          StoryItem.pageImage(
              url: "${Model.Story_photos[9]}",
              caption: "${Model.Story_Title[9]}",
              duration: Duration(seconds: 5),
              controller: storyView),
          StoryItem.pageImage(
              url: "${Model.Story_photos[10]}",
              caption: "${Model.Story_Title[10]}",
              duration: Duration(seconds: 5),
              controller: storyView),
          StoryItem.pageImage(
              url: "${Model.Story_photos[11]}",
              caption: "${Model.Story_Title[11]}",
              duration: Duration(seconds: 5),
              controller: storyView),
          StoryItem.pageImage(
              url: "${Model.Story_photos[12]}",
              caption: "${Model.Story_Title[12]}",
              duration: Duration(seconds: 5),
              controller: storyView),
        ],
        controller: storyView,
      ),
    );
  }
}
