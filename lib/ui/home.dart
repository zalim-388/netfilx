import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netfilx/bloc/netflix_bloc.dart';
import 'package:netfilx/ui/SecondScreen.dart';
import 'package:netfilx/ui/profile.dart';

class Home extends StatefulWidget {
  final String image;
  final String name;
  const Home({super.key, required this.image, required this.name});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<NetflixBloc>(context).add(Fecthmovie());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset('assets/image/Variant2.png'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Secondscreen(),
                    ));
              },
              icon: Icon(
                Icons.search_outlined,
                color: Colors.white,
                size: 25,
              )),
      IconButton(
  onPressed: () {

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Profile(name: '', image: ''),
      ),
    );
  },
  icon: Icon(
    Icons.person,
    color: Colors.white,
  ),
),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Row(
                children: [
                  Text('TV shows',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  SizedBox(width: 30),
                  Text('Movies',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  SizedBox(width: 30),
                  Text('Categories',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ],
              ),
            ),
            SizedBox(height: 20,),

Image.asset('assets/image/n7 1 (1).png',fit: BoxFit.cover,height: 300,),

   
            Text(
              'Charming  Feel-Good  Dramedy  Movie',
              style: TextStyle(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Row(
                children: [
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 25,
                          )),
                      Text(
                        'My List',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 25,
                          )),
                      Text(
                        'play',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.info_outline,
                            color: Colors.white,
                            size: 25,
                          )),
                      Text(
                        'info',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ],
              ),
            ),




            BlocBuilder<NetflixBloc, NetflixState>(
              builder: (context, state) {
                if (state is NetflixblocLoading) {
                  print('loading...');
                  return Center(child: CircularProgressIndicator());
                } else if (state is NetflixblocError) {
                  return Center(
                    child: Text(
                      'Something went wrong!',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  );
                } else if (state is NetflixblocLoaded) {
                  var data = state.netflixmovies;

                  return GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: data.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.network(
                            data[index].image.toString(),
                            width: 100,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 5),
                          Text(
                            data[index].title.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      );
                    },
                  );
                }

                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
