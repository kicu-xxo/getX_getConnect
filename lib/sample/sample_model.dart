import 'package:get/get.dart';

List<SampleModel> productFromJson(Response<dynamic> str) {
  return List<SampleModel>.from(str.body.map((x) {
    // print('productFromJson item => $x');
    return SampleModel.fromJson(x);
  }));
}

class SampleModel {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  SampleModel(
    this.userId,
    this.id,
    this.title,
    this.completed,
  );

  SampleModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
      };
}
