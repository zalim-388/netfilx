import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netfilx/bloc/netflix_bloc.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({
    super.key,
  });

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                ),
                suffixIcon: Icon(
                  Icons.mic_outlined,
                  color: Colors.white,
                ),
                hintText: 'Search games, show...',
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                fillColor: Colors.white38,
                filled: true),
          ),
          SizedBox(
            height: 40.h,
          ),
          Expanded(child: BlocBuilder<NetflixBloc, NetflixState>(
            builder: (context, state) {
              if (state is NetflixblocLoading) {
                print('loading...');
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is NetflixblocError) {
                return Center(
                  child: Text(
                    'Something went wrong!',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                );
              } else if (state is NetflixblocLoaded) {
                var data = state.netflixmovies;

                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.network(
                        data[index].image.toString(),
                        fit: BoxFit.cover,
                        width: 100.w,
                        height: 80.h,
                        // errorBuilder: (context, error, stackTrace) =>
                        //     Icon(Icons.error, color: Colors.red),
                      ),
                      title: Text(
                        data[index].title.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_circle_outline,
                            color: Colors.white,
                          )),
                    );
                  },
                );
              }
              return Container();
            },
          ))
        ],
      ),
    );
  }
}
