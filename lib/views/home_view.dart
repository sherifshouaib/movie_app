import 'package:flutter/material.dart';
import 'package:movie_app/models/result_model.dart';
import 'package:movie_app/services/movies_service.dart';
import 'package:movie_app/widgets/movies_categories.dart';
import 'package:movie_app/widgets/trending_card.dart';
import 'package:movie_app/widgets/trending_list_view.dart';
import 'package:movie_app/widgets/trending_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          'assets/images/flutflix.png',
          height: 40,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Padding(
                padding: EdgeInsets.only(bottom: 32.0),
                child: Text(
                  'Trending Movies',
                  style: TextStyle(fontSize: 25, fontFamily: 'ABeeZee'),
                ),
              ),
             const TrendingListViewBuilder(),
              MoviesCategories(category: "Top rated movies",getdata:MoviesService().getTopRatedMovies() ,),
              MoviesCategories(category: "Upcoming movies",getdata: MoviesService().getUpcomingNews(),),
            ],
          ),
        ),
      ),
    );
  }
}


