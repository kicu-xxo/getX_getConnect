import 'package:get/get.dart';
import 'package:study_note/sample_model.dart';
import 'package:study_note/sample_provider.dart';

class SampleController extends GetxController
    with StateMixin<List<SampleModel>> {
  final SampleProvider _sampleProvider = SampleProvider();
  @override
  void onInit() {
    super.onInit();
    _sampleProvider.fetchProducts().then((response) {
      change(response, status: RxStatus.success());
      // print(response);
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
      print('errorrrr');
    });
  }
}
