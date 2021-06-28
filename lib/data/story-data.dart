class StoryItem {
  String id;
  String title;
  String author = "Me";
  String setting;
  String body;
  DateTime created;
  DateTime updated;

  StoryItem(
      this.id, this.setting, this.title, this.body, this.created, this.updated);
}

class StoryData {
  static final List<StoryItem> stories = [
    StoryItem(
        "1",
        "lighthouse",
        "Night at the Lighthouse",
        "It was a bright and sunny day as Fred rowed out across the bay. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        DateTime.now(),
        DateTime.now()),
    StoryItem(
        "2",
        "forest",
        "The Climb",
        "A man clung on to the twisted trunk of a tree growing on the side of the mountain, the only thing holding him up from the steep drop below. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        DateTime.now(),
        DateTime.now()),
    StoryItem(
        "3",
        "park",
        "Hidden Paths",
        "Jack sat on the roughly sawn planks of a park bench. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        DateTime.now(),
        DateTime.now()),
  ];
}
