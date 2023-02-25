import 'package:http/http.dart' as http;
import 'dart:convert';

void main(List<String> args) {
  getAPI();

}


getAPI () async {
  Uri url = Uri.parse("https://servicodados.ibge.gov.br/api/v2/censos/nomes/nicollas");
  var response = await http.get(url);
  print(jsonDecode(response.body)[0]['nome']);

for (int i = 0; i < (jsonDecode(response.body)[0]['res']).length; i++){
  print('O periodo é ${jsonDecode(response.body)[0]['res'][i]['periodo']}');
  print('A Frequencia é ${jsonDecode(response.body)[0]['res'][i]['frequencia']}');
  print('___________________');
}  
  

}