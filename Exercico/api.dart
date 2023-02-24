import 'package:http/http.dart' as http;
import 'dart:convert';

void main(List<String> args) {
  getAPI();

}
getAPI () async {
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/todos/1");
  var response = await http.get(url);
  print(jsonDecode(response.body)['title']);
}