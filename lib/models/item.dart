class Item {
  int id;
  String title;
  String description;
  bool done;

  Item({this.title, this.done, int id, String description});

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    done = json['done'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['done'] = this.done;
    return data;
  }
}