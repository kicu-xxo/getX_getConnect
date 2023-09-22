import 'package:get/get.dart';
import 'package:study_note/plan/api_provider.dart';
import 'package:study_note/plan/plan_model.model.dart';

class PlanController extends GetxController with StateMixin<List<PlanModel>> {
  final ApiProvider _apiProvider = ApiProvider();

  @override
  void onInit() {
    super.onInit();
    _apiProvider.fetchProducts().then((response) {
      change(response, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }
}
