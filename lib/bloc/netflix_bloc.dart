import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'netflix_event.dart';
part 'netflix_state.dart';




class NetflixBloc extends Bloc<NetflixEvent, NetflixState> {

  NetflixApi   Api   = NetflixApi();

  NetflixBloc():super(Netflixinitial());

on<Fecthmovie>((event, emit) async {
  emit(NetflixblocLoading());

  try {
    final netflixmovies = await Api.getmovie();
    emit(NetflixblocLoaded(netflixmovies));
  } catch (e) {
    emit(NetflixblocError(e.toString()));

    
  }
});




}

 



