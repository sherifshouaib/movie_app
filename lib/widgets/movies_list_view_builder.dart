import 'package:flutter/material.dart';
import 'package:movie_app/models/result_model.dart';
import 'package:movie_app/services/movies_service.dart';
import 'package:movie_app/widgets/movies_categories.dart';
import 'package:movie_app/widgets/movies_list_view.dart';

class MoviesListViewBuilder extends StatefulWidget {
  MoviesListViewBuilder({
    super.key,
    required this.getdata,
  });

  final getdata;
  @override
  State<MoviesListViewBuilder> createState() => _MoviesListViewBuilderState();
}

class _MoviesListViewBuilderState extends State<MoviesListViewBuilder> {
  List<ResultModel> results = [];

  var future;
  void initState() {
    future = widget.getdata;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ResultModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          results = snapshot.data!;
          return MoviesListView(
            results: results,
          );
        } else if (snapshot.hasError) {
          return const ErrorMessage();
        } else {
          return const Center(
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
