import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netfilx/Repositoy/Api/netflix_Api.dart';
import 'package:netfilx/Repositoy/Model_class/netflix_Model.dart';

part 'netflix_event.dart';
part 'netflix_state.dart';

class NetflixBloc extends Bloc<NetflixEvent, NetflixState> {
  NetflixApi Api = NetflixApi();
  late List<NetflixModel> netflixmovies;

  NetflixBloc() : super(Netflixinitial()) {
    on<Fecthmovie>((event, emit) async {
      emit(NetflixblocLoading());

      try {
        netflixmovies = await Api.getmovie();
        emit(NetflixblocLoaded(netflixmovies: netflixmovies));
      } catch (e) {
        emit(NetflixblocError());
      }
    });
  }
}
