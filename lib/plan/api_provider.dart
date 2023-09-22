import 'package:get/get.dart';
import 'package:study_note/plan/plan_model.model.dart';

class ApiProvider extends GetConnect {
  Future<List<PlanModel>> fetchProducts() async {
    final response = await get('https://jsonplaceholder.typicode.com/todos');
    if (response.status.hasError) {
      // print(response.statusText.toString());
      return Future.error(response.statusText.toString());
    } else {
      return productFromJson(response.bodyString);
    }
  }
}
