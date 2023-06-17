import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_12/api.dart';

class MovieDetail extends StatefulWidget {
  var idMove;
  var img;

  MovieDetail({super.key, required this.idMove, this.img});

  @override
  State<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Nome do filme'),
        ),
        backgroundColor: Colors.grey,
        body: FutureBuilder(
            future: getMoviesID(widget.idMove),
            builder: (context, AsyncSnapshot Snapshot) {
              return Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Informações'),
                          ],
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * 0.75,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.25,
                    top: 0,
                    child: Hero(
                      tag: widget.idMove,
                      child: Image.network(
                        Snapshot.data['Poster'],
                        width: 250,
                        height: 250,
                      ),
                    ),
                  ),
                ],
              );
            }));
  }
}
