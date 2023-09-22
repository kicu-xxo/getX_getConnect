import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_note/sample_controller.dart';

class SamplePage extends GetView<SampleController> {
  const SamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Get Connect with State Mixins "),
        ),
        body: controller.obx(
          (state) {
            print(state);
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return null;
              },
            );
          },
          onEmpty: const Text("empty"),
          onError: (error) {
            return const Text('error');
          },
          onLoading: const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
