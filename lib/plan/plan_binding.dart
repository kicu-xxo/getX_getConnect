import 'package:get/get.dart';
import 'package:study_note/plan/plan_controller.dart';

class PlanBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlanController>(() => PlanController());
  }
}
