import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:movie_app/models/result_model.dart';

class MoviesService {
  Future<List<ResultModel>> getTrendingMovies() async {
    try {
      final response = await http.get(
        Uri.parse(
            'https://api.themoviedb.org/3/trending/movie/day?language=en-US&api_key=3fc3f4d6af6cc3f54f61ef42fabd9e76'),
      );

      Map<String, dynamic> jsondata = jsonDecode(response.body);

      List<dynamic> results = jsondata['results'];

      List<ResultModel> movieslist = [];

      for (var result in results) {
        ResultModel movieModel = ResultModel(
          backdrop_path: result['backdrop_path'],
          original_title: result['original_title'],
          overview: result['overview'],
          poster_path: result['poster_path'],
          release_date: result['release_date'],
          title: result['title'],
          vote_average: result['vote_average'],
        );
        movieslist.add(movieModel);
      }
      return movieslist;
    } catch (e) {
      return [];
    }
  }

  Future<List<ResultModel>> getUpcomingNews() async {
    try {
      final response = await http.get(Uri.parse(
          'https://api.themoviedb.org/3/movie/upcoming?api_key=3fc3f4d6af6cc3f54f61ef42fabd9e76'));

      Map<String, dynamic> jsondata = jsonDecode(response.body);

      List<dynamic> results = jsondata['results'];

      List<ResultModel> movieslist = [];

      for (var result in results) {
        ResultModel movieModel = ResultModel(
          backdrop_path: result['backdrop_path'],
          original_title: result['original_title'],
          overview: result['overview'],
          poster_path: result['poster_path'],
          release_date: result['release_date'],
          title: result['title'],
          vote_average: result['vote_average'],
        );
        movieslist.add(movieModel);
      }
      return movieslist;
    } catch (e) {
      return [];
    }
  }

  Future<List<ResultModel>> getTopRatedMovies() async {
    try {
      final response = await http.get(
        Uri.parse(
            'https://api.themoviedb.org/3/movie/top_rated?api_key=3fc3f4d6af6cc3f54f61ef42fabd9e76'),
      );

      Map<String, dynamic> jsondata = jsonDecode(response.body);

      List<dynamic> results = jsondata['results'];

      List<ResultModel> movieslist = [];

      for (var result in results) {
        ResultModel movieModel = ResultModel(
          backdrop_path: result['backdrop_path'],
          original_title: result['original_title'],
          overview: result['overview'],
          poster_path: result['poster_path'],
          release_date: result['release_date'],
          title: result['title'],
          vote_average: result['vote_average'],
        );
        movieslist.add(movieModel);
      }
      return movieslist;
    } catch (e) {
      return [];
    }
  }
}
