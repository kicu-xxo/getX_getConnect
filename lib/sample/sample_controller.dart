import 'package:get/get.dart';
import 'package:study_note/sample/sample_model.dart';
import 'package:study_note/sample/sample_service.dart';

class SampleController extends GetxController
    with StateMixin<List<SampleModel>> {
  final SampleService _sampleService = SampleService();
  @override
  void onInit() {
    super.onInit();
    _sampleService.fetchProducts().then((response) {
      change(response, status: RxStatus.success());
      // print('from sample_controller response => $response');
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
      print('sample_controller error');
    });
  }
}
