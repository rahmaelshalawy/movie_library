class Movie {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String image;

  const Movie({
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.image,
  });
}

const List<Movie> movies = [
  Movie(
    title: 'The Shawshank Redemption',
    genre: 'Drama',
    year: 1994,
    rating: 9.3,
    image: 'assets/posters/shawshank.jpg',
  ),
  Movie(
    title: 'The Godfather',
    genre: 'Crime',
    year: 1972,
    rating: 9.2,
    image: 'assets/posters/godfather.jpg',
  ),
  Movie(
    title: 'The Dark Knight',
    genre: 'Action',
    year: 2008,
    rating: 9.0,
    image: 'assets/posters/dark_knight.jpg',
  ),
  Movie(
    title: 'Inception',
    genre: 'Sci-Fi',
    year: 2010,
    rating: 8.8,
    image: 'assets/posters/inception.jpg',
  ),
  Movie(
    title: 'Pulp Fiction',
    genre: 'Crime',
    year: 1994,
    rating: 8.9,
    image: 'assets/posters/pulp_fiction.jpg',
  ),
  Movie(
    title: 'Forrest Gump',
    genre: 'Drama',
    year: 1994,
    rating: 8.8,
    image: 'assets/posters/forrest_gump.jpg',
  ),
  Movie(
    title: 'The Matrix',
    genre: 'Action',
    year: 1999,
    rating: 8.7,
    image: 'assets/posters/Matrix1.jpg',
  ),
  Movie(
    title: 'Interstellar',
    genre: 'Sci-Fi',
    year: 2014,
    rating: 8.7,
    image: 'assets/posters/interstellar.jpg',
  ),
];