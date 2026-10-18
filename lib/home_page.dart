import 'package:flutter/material.dart';
import 'movie.dart';
import 'movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  String query = '';
  int discount = 20;

  void search(String value ){
    setState(() {
      query = value ;
    });

  }

  void changeDiscount() {
    setState(() {
      discount = discount > 0 ? discount - 1 : 20;
    });
  }

  @override
  Widget build(BuildContext context) {

    List<Movie> filtered_movies = movies.where(
            (m){
          return m.title.toLowerCase().contains(query.toLowerCase()) ||
              m.genre.toLowerCase().contains(query.toLowerCase());
        }
    ).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text("Movie Library",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2
            ),),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.primary,
          leading: Icon(Icons.menu),
          actions: [
            SizedBox(width: 3,),
            Icon(Icons.search)
          ],
        ),

        body :Center(child :

        Column(
          children: [
            TextField(
              onChanged: search,
              decoration: InputDecoration(
                hintText: 'Search movies...',
                prefixIcon: Icon(Icons.search),
              ),
            )
            ,
            Expanded(child:
            filtered_movies.isEmpty
                ? Center(child: Text('No movies found'))
                : GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                childAspectRatio: 1.4
            ),
              itemBuilder:
                  (BuildContext context, int index )
              {
                return  MovieCard(
                  movie: filtered_movies[index],
                  discount: discount,
                  onDiscountTap: changeDiscount,
                );
              },
              itemCount: filtered_movies.length,
            ))
          ],
        )


        )

    );
  }
}