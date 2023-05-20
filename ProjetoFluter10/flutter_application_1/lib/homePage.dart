import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/api.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API'),
      ),
      body: FutureBuilder(
          future: getAPI(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Container(
                        child: ListTile(
                      title: Text(snapshot.data[index]['title']),
                      subtitle: Text(snapshot.data[index]['category']),
                      leading: Image.network(
                        snapshot.data[index]['thumbnail'],
                        fit: BoxFit.contain,
                        width: 100,
                        height: 100,
                      ),
                      trailing: Text(snapshot.data[index]['brand']),
                    ));
                  });
            } else if (snapshot.hasError) {
              return Center(child: Text('${snapshot.error}'));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
