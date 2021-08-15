import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/components/restuarant-shimmer.dart';
import 'package:restaurants/components/restuarant-widget.dart';
import 'package:restaurants/controllers/restuarant-controller.dart';

class RestuarantList extends StatelessWidget {
  RestuarantList({Key? key}) : super(key: key);
  final RestuarantController controller = Get.put(RestuarantController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restuarants'),
      ),
      body: GetBuilder<RestuarantController>(
        init: controller,
        builder: (controller) => controller.isLoading
            ? ListView.builder(
                itemCount: 10,
                padding: const EdgeInsets.all(8),
                itemBuilder: (context, index) => RestuarantShimmerEffect(),
              )
            : ListView.builder(
                padding: const EdgeInsets.all(10),
                controller: controller.controller,
                itemCount: controller.restuarantList.length,
                itemBuilder: (context, index) => RestuarantWidget(
                    restuarant: controller.restuarantList[index]),
              ),
      ),
    );
  }
}
