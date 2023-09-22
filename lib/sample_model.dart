List<SampleModel> productFromJson(str) {
  return List<SampleModel>.from(str.map((x) {
    print(x);
    return SampleModel.fromJson(x);
  }));
}

class SampleModel {
//데이터 모델.
//데이터베이스의 구조에 맞추어 변수에 데이터베이스에서 가져온 데이터를 담아줌.
//동일한 구조를 사용하는 테이블은 하나로 묶어 하나의 데이터 모델을 거쳐감.

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
