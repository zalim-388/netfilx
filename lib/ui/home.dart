// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:netfilx/bloc/netflix_bloc.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   void initState() {
//     super.initState();

//     BlocProvider.of<NetflixBloc>(context).add(Fecthmovie());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         leading: Image.asset('assets/image/Variant2.png'),
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.search_outlined,
//                 color: Colors.white,
//                 size: 25,
//               )),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 80),
//               child: Row(
//                 children: [
//                   Text(
//                     'TV shows',
//                     style: TextStyle(color: Colors.white, fontSize: 16),
//                   ),
//                   SizedBox(
//                     width: 30,
//                   ),
//                   Text(
//                     ' Movies',
//                     style: TextStyle(color: Colors.white, fontSize: 16),
//                   ),
//                   SizedBox(
//                     width: 30,
//                   ),
//                   Text(
//                     'Categories',
//                     style: TextStyle(color: Colors.white, fontSize: 16),
//                   ),
//                 ],
//               ),
//             ),
//             BlocBuilder<NetflixBloc, NetflixState>(
//               builder: (context, state) {
//                 if (state is NetflixblocLoading) {
//                   print('loding');

//                   return Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 } else if (state is NetflixblocError) {
//                   return Center(
//                     child: Text(
//                       'Something went wrong !',
//                       style: TextStyle(color: Colors.white, fontSize: 25),
//                     ),
//                   );
//                 } else if (state is NetflixblocLoaded) {
//                   var data = state.netflixmovies;

//                   return GridView.builder(
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: data.length,
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2,
//                         mainAxisSpacing: 10,
//                         crossAxisSpacing: 10),
//                     itemBuilder: (context, index) {
//                       Image.network(
//                         data[index].image.toString(),
//                         width: 100,
//                         height: 100,
//                         fit: BoxFit.cover,
//                       );
//                       Text(data[index].title.toString(),style: TextStyle(color: Colors.white,fontSize: 20),);
//                     },
//                   );
//                 }

//                 return Container();
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netfilx/bloc/netflix_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

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
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                color: Colors.white,
                size: 25,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Row(
                children: [
                  Text('TV shows', style: TextStyle(color: Colors.white, fontSize: 16)),
                  SizedBox(width: 30),
                  Text('Movies', style: TextStyle(color: Colors.white, fontSize: 16)),
                  SizedBox(width: 30),
                  Text('Categories', style: TextStyle(color: Colors.white, fontSize: 16)),
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
                        crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
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
