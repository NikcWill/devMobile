import 'dart:convert';

import 'package:http/http.dart' as http;

getMovies() async {
  var url = Uri.parse('https://www.omdbapi.com/?s=top%20gun&apikey=e6c43dc6');
  var response = await http.get(url);
  var data = await jsonDecode(response.body);

  return data;
}

getMoviesID(idMovie) async {
  var url = Uri.parse('https://www.omdbapi.com/?i=$idMovie&apikey=e6c43dc6');
  var response = await http.get(url);
  var data = await jsonDecode(response.body);

  return data;
}
