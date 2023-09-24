import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_note/sample/sample_controller.dart';

class SamplePage extends GetView<SampleController> {
  const SamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("GetConnect TEST"),
        ),
        body: controller.obx(
          (state) {
            // print('sample_page state => $state');
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 7.1),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('id : ${state![index].id.toString()}'),
                      Text('userId :  ${state[index].userId.toString()}'),
                      Text('title : ${state[index].title.toString()}'),
                    ],
                  ),
                );
              },
            );
          },
          onEmpty: const Text("empty"),
          onError: (error) {
            print('sample_page error');
            return const Text('error');
          },
          onLoading: const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
