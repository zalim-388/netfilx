part of 'netflix_bloc.dart';

@immutable
abstract class NetflixState {}

class Netflixinitial extends NetflixState {}

class NetflixblocLoading extends NetflixState {}

class NetflixblocLoaded extends NetflixState {
  final List<NetflixModel> netflixmovies;

  NetflixblocLoaded({required this.netflixmovies});
}

class NetflixblocError extends NetflixState {}
