import 'package:flutter/material.dart';
import 'package:movie_app/models/result_model.dart';
import 'package:movie_app/views/trending_movie.dart';
import 'package:movie_app/widgets/constants.dart';

class MoviesCard extends StatelessWidget {
  const MoviesCard({
    super.key,
    required this.resultModel,
  });

  final ResultModel resultModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return TrendingMovie(
                  resultModel: resultModel,
                );
              },
            ),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            '${Constants.imagePath}${resultModel.poster_path}',
            //color: Colors.amber,
            height: 200,
            width: 150,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
