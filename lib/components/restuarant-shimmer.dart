import 'package:flutter/material.dart';
import 'package:restaurants/utilities/constants.dart';
import 'package:shimmer/shimmer.dart';

class RestuarantShimmerEffect extends StatelessWidget {
  const RestuarantShimmerEffect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Shimmer.fromColors(
        baseColor: Constants.shimmerBaseColor,
        highlightColor: Constants.shimmerHighlightColor,
        child: Container(
          height: 150,
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  margin: const EdgeInsets.all(8),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.white,
                          width: 100,
                        ),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        flex: 4,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.white,
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
    );
  }
}
