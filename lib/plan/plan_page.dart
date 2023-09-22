import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_note/plan/plan_controller.dart';

class PlanPage extends GetView<PlanController> {
  const PlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('api'),
      ),
      body: controller.obx(
          (state) {
            print(state);
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
                childAspectRatio: 1 / 1, //item 의 가로 1, 세로 1 의 비율
                mainAxisSpacing: 10, //수평 Padding
                crossAxisSpacing: 10, //수직 Padding
              ),
              itemBuilder: (BuildContext context, int index) {
                return Text(state![index].readyPercent.toString());
              },
            );
          },
          onEmpty: const Text('empty'),
          onError: (error) {
            print(error);
            return const Text('error');
          },
          onLoading: const CircularProgressIndicator()),
    ));
  }
}
