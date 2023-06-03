import 'dart:convert';

import 'package:http/http.dart' as http;

getMovies() async {
  var url = Uri.parse('https://www.omdbapi.com/?s=spiderman&apikey=aea972ba');
  var response = await http.get(url);
  var data = await jsonDecode(response.body);

  return data;
}
