import 'package:get/get.dart';
import 'package:study_note/sample_model.dart';

class SampleProvider extends GetConnect {
  Future<List<SampleModel>> fetchProducts() async {
    final response = await get('https://jsonplaceholder.typicode.com/todos');
    if (response.status.hasError) {
      return Future.error(response.statusText.toString());
    } else {
      // print(response.body);
      return productFromJson(response);
    }
  }
}
