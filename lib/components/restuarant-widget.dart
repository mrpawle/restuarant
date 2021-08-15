import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/components/cache-image-widget.dart';
import 'package:restaurants/models/restuarant.dart';
import 'package:restaurants/screens/restuarant-details.dart';
import 'package:restaurants/utilities/constants.dart';

class RestuarantWidget extends StatelessWidget {
  final Restuarant restuarant;
  const RestuarantWidget({Key? key, required this.restuarant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Get.to(() => RestuarantDetails(
              restaurantId: 636735)); //restuarant.restaurantId!
        },
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            height: 120,
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CacheImageWidget(
                        'https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_508,h_320,c_fill/vukx1kvo41ojo130vj0e',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          restuarant.restaurantName!,
                          maxLines: 2,
                          style: TextStyle(
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        restuarant.cuisines!.isEmpty
                            ? Offstage()
                            : SizedBox(height: 5),
                        restuarant.cuisines!.isEmpty
                            ? Offstage()
                            : Text(
                                restuarant.cuisines!
                                    .map((e) => e.cuisine)
                                    .toList()
                                    .join(', '),
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black54,
                                ),
                              ),
                        SizedBox(height: 5),
                        RichText(
                          text: TextSpan(
                            text: restuarant.locationName!,
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.2,
                              color: Colors.black54,
                            ),
                            children: [
                              TextSpan(
                                text: ' | ',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                ),
                              ),
                              TextSpan(
                                text:
                                    Constants.getDistance(restuarant.distance!),
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
