import 'package:get/get.dart';
import 'package:study_note/sample/sample_model.dart';

class SampleService extends GetConnect {
  Future<List<SampleModel>> fetchProducts() async {
    final Response response =
        await get('https://jsonplaceholder.typicode.com/todos');
    if (response.status.hasError) {
      return Future.error(response.statusText.toString());
    } else {
      // print("sample_provider response body => ${response.body}");
      return productFromJson(response);
    }
  }
}
