import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_12/MovieDetail.dart';
import 'package:flutter_application_12/api.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var id;
  var img1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Cineplay"),
          ),
        ),
        body: FutureBuilder(
          future: getMovies(),
          builder: (context, AsyncSnapshot snapshot) {
            return ListView.builder(
                itemCount: snapshot.data['Search'].length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      id:
                      snapshot.data['Search'][index]['imdbID'];
                      img1:
                      snapshot.data['Search'][index]['Poster'];
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (Builder) => MovieDetail(
                                    idMove: id,
                                    img: img1,
                                  )));
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 200,
                            child: Card(
                              color: Colors.blueGrey,
                              elevation: 30,
                              child: Stack(
                                children: [
                                  Hero(
                                    tag: img1,
                                    child: Image.network(
                                      snapshot.data['Search'][index]
                                                  ['Poster'] ==
                                              "N/A"
                                          ? 'https://imobzi.storage.googleapis.com/image/layout13/image-not-found.png'
                                          : snapshot.data['Search'][index]
                                              ['Poster'],
                                      fit: BoxFit.cover,
                                      width: 100,
                                      height: 200,
                                    ),
                                  ),
                                  Positioned(
                                      top: 10,
                                      left: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Text(
                                          snapshot.data['Search'][index]
                                              ['Title'],
                                          style:
                                              TextStyle(color: Colors.white))),
                                  Positioned(
                                      top: 50,
                                      left: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Text("Movie",
                                          style:
                                              TextStyle(color: Colors.white)))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
        ));
  }
}
