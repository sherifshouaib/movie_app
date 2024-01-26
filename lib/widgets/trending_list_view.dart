import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/models/result_model.dart';
import 'package:movie_app/services/movies_service.dart';
import 'package:movie_app/widgets/trending_card.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TrendingListView extends StatelessWidget {
   const TrendingListView({super.key,required this.results});

final List<ResultModel> results ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 300,
            child: CarouselSlider.builder(
              itemCount: results.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                return Container(
                  child: TrendingCard(
                    resultModel: results[itemIndex],
                  ),
                );
              },
              options: CarouselOptions(
                height: 300,
                //scrollDirection: Axis.horizontal,
                enlargeCenterPage: true,
                viewportFraction: 0.55,
                //pageSnapping: true,
                // autoPlayCurve: Curves.fastOutSlowIn
                autoPlayAnimationDuration: Duration(seconds: 1),
              ),
            ),
          );
    /*SizedBox(
    height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return TrendingCard();
        },
      ),
    );*/
  }
}

