import 'package:flutter/material.dart';
import 'package:movie_app/widgets/movies_list_view.dart';
import 'package:movie_app/widgets/movies_list_view_builder.dart';

class MoviesCategories extends StatelessWidget {
  MoviesCategories({super.key, required this.category,required this.getdata});
final  getdata;
  String category;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        Text(
          category,
          style: TextStyle(fontSize: 25, fontFamily: 'ABeeZee'),
        ),
        SizedBox(
          height: 30,
        ),
        MoviesListViewBuilder(getdata:getdata ,),
      ],
    );
  }
}
