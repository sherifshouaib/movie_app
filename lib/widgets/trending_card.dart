import 'package:flutter/material.dart';
import 'package:movie_app/models/result_model.dart';
import 'package:movie_app/views/trending_movie.dart';
import 'package:movie_app/widgets/constants.dart';

class TrendingCard extends StatelessWidget {
  const TrendingCard({
    super.key,
    required this.resultModel,
  });

  final ResultModel resultModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return TrendingMovie(resultModel: resultModel,);
            },
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          '${Constants.imagePath}${resultModel.poster_path}',
          //color: Colors.amber,   //اللون ده كان بيخفي الصورة ومكانتش باينة خالص وقعدت اجرب والمشكلة كانت في دي بس
          height: 300,
          width: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
