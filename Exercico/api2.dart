import 'package:http/http.dart' as http;
import 'dart:convert';

getAPI() async {
  Uri url = Uri.parse("http://pokeapi.co/api/v2/pokemon/ditto");
  var response = await http.get(url);
  print(jsonDecode(response.body)['abilities'][1]['ability']);
}
