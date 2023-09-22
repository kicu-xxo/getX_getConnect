List<PlanModel> productFromJson(dynamic str) =>
    List<PlanModel>.from((str).map((x) => PlanModel.fromJson(x)));

class PlanModel {
//데이터 모델.
//데이터베이스의 구조에 맞추어 변수에 데이터베이스에서 가져온 데이터를 담아줌.
//동일한 구조를 사용하는 테이블은 하나로 묶어 하나의 데이터 모델을 거쳐감.

  int? readyPercent;
  String? readyCount;
  String? complPercent;
  String? holdCount;
  String? exceptCount;
  String? allCount;
  String? complCount;
  String? allPercent;

  PlanModel(
      this.readyPercent,
      this.readyCount,
      this.complPercent,
      this.holdCount,
      this.exceptCount,
      this.allCount,
      this.complCount,
      this.allPercent);

  PlanModel.fromJson(Map<String, dynamic> json) {
    readyPercent = json['plan_ready_perent'];
    readyCount = json['plan_ready_count'];
    complPercent = json['plan_compl_perent'];
    holdCount = json['plan_hold_count'];
    exceptCount = json['plan_except_count'];
    allCount = json['plan_all_count'];
    complCount = json['plan_compl_count'];
    allPercent = json['plan_all_perent'];
  }

  Map<String, dynamic> toJson() => {
        "plan_ready_perent": readyPercent.toString(),
        "plan_ready_count": readyCount,
        "plan_compl_perent": complPercent,
        "plan_hold_count": holdCount,
        "plan_except_count": exceptCount,
        "plan_all_count": allCount,
        "plan_compl_count": complCount,
        "plan_all_perent": allPercent,
      };
}
