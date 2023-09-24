import 'package:get/get.dart';
import 'package:study_note/sample/sample_controller.dart';

class SampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SampleController>(() => SampleController());
  }
}
