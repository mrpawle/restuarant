import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/controllers/restuarant-controller.dart';
import 'package:restaurants/models/restaurant_dishes.dart';
import 'package:restaurants/utilities/constants.dart';

class RestuarantDetails extends StatelessWidget {
  final int? restaurantId;
  RestuarantDetails({Key? key, required this.restaurantId}) : super(key: key);
  final RestuarantController controller = Get.put(RestuarantController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<RestuarantController>(
          initState: (state) {
            controller.isLoading = true;
            controller.fetchRestuarantInfo(restaurantId!);
          },
          builder: (controller) => controller.isLoading
              ? Center(child: CircularProgressIndicator())
              : Container(
                  height: Get.mediaQuery.size.height,
                  width: Get.mediaQuery.size.width,
                color: Colors.white,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getHeaderWidget(),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.navigation_rounded,
                          ),
                          minLeadingWidth: 15,
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Location'),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Directions',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                          subtitle: Text(
                              controller.restuarantInfo!.restaurantAddress!),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.timer,
                          ),
                          minLeadingWidth: 15,
                          title: Text('Timings'),
                          subtitle:
                              Text(controller.restuarantInfo!.openingsHours!),
                        ),
                        Divider(),
                        SizedBox(height: 10),
                        Text(
                          'Dishes',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        getDishesWidget(),
                        SizedBox(height: 10),
                        restuarantDetailsWidget(),
                        SizedBox(height: 20),
                        restuarantContactWidget(),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  Widget getHeaderWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        Text(
          controller.restuarantInfo!.restaurantName!,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        controller.restuarantInfo!.cuisines!.isEmpty
            ? Offstage()
            : SizedBox(height: 5),
        controller.restuarantInfo!.cuisines!.isEmpty
            ? Offstage()
            : Text(
                controller.restuarantInfo!.cuisines!
                    .map((e) => e.cuisine)
                    .toList()
                    .join(', '),
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black54,
                ),
              ),
        SizedBox(height: 20),
        Divider(),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star),
                        Text(
                          controller.restuarantInfo!.rating.toString(),
                        ),
                      ],
                    ),
                    Text(
                      '${double.parse(controller.restuarantInfo!.votes!).toInt()}+ Ratings',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'Closed',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'For Delivery',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      Constants.moneyFormatter(
                          controller.restuarantInfo!.avgMealRate),
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'For Two',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget getDishesWidget() {
    return Column(
      children: [
        for (RestaurantDishes dish
            in controller.restuarantInfo!.restaurantDishes!) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            border: Border.all(width: 1, color: Colors.red)),
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.red),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        dish.restaurantDishName!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'In Biryani / Steamed Rice / Jeera Rice / Dal Khichdi\'s Pulao',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(height: 5),
                      Text(Constants.moneyFormatter(dish.rate))
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Center(
                  child: Container(
                    width: 80,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.grey)),
                    alignment: Alignment.center,
                    child: Text('Add'),
                  ),
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ],
    );
  }

  Widget restuarantDetailsWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Details',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'AVERAGE COST',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 5),
        Text(
          '${controller.restuarantInfo!.avgMealRate} for two people (approx.)',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'Exclusive of applicable taxes and charges, if any',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'FACILITIES',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 5),
        Column(
          children: controller.restuarantInfo!.facilities!
              .map((e) => e.values!
                  ? Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          margin: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.grey)),
                          child: Icon(
                            Icons.check,
                            size: 14,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '${e.facilities}',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                  : Offstage())
              .toList(),
        ),
      ],
    );
  }

  Widget restuarantContactWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact Details',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'MOBILE NUMBER',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 5),
        Text(
          '${controller.restuarantInfo!.contactNumber}',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'WEBSITE',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 5),
        Text(
          '${controller.restuarantInfo!.websiteLink}',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
