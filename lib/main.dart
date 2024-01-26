import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/services/movies_service.dart';
import 'package:movie_app/views/home_view.dart';

void main() async {
   runApp(MovieApp());
//MoviesService(Dio()).getTrendingMovies();
 // MoviesService(Dio()).getUpcomingNews();
 // MoviesService(Dio()).getTopRatedMovies();
}

//test

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor:const  Color(0XFF23272E), useMaterial3: true),
      home:const HomeView(),
    );
  }
}
