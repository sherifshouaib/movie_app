import 'package:flutter/material.dart';
import 'package:movie_app/models/result_model.dart';
import 'package:movie_app/services/movies_service.dart';
import 'package:movie_app/widgets/trending_list_view.dart';

class TrendingListViewBuilder extends StatefulWidget {
  const TrendingListViewBuilder({
    super.key,
  });

  @override
  State<TrendingListViewBuilder> createState() =>
      _TrendingListViewBuilderState();
}

class _TrendingListViewBuilderState extends State<TrendingListViewBuilder> {
  List<ResultModel> results = [];

  var future;

  void initState() {
    future = MoviesService().getTrendingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ResultModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          results = snapshot.data!;
          return TrendingListView(
            results: results,
          );
        } else if (snapshot.hasError) {
          return ErrorMessage();
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
  });
  //final String message;
  @override
  Widget build(BuildContext context) {
    return Text('oops there was an error, try later');
  }
}
