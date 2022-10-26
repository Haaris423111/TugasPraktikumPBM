import 'package:flutter/material.dart';
import 'package:tugaspertemuan4/model/movie.dart';
import 'package:tugaspertemuan4/screens/movie_details.dart';

class MovieListScreen extends StatelessWidget {
  const MovieListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Film yang tersedia'),
        ),
        body: ListView.builder(
            itemCount: movieList.length,
            itemBuilder: (context, index) {
              Movie movie = movieList[index];
              return Card(
                child: ListTile(
                  title: Text(movie.title),
                  subtitle: Text(movie.tahun.toString()),
                  leading: Image.network(movie.imageUrl),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MovieDetailsScreen(movie)));
                  },
                ),
              );
            }));
  }
}
