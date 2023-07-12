/*
  Biblioteca HTTP: https://pub.dev/packages/http
  Viacep API: https://viacep.com.br/
*/
import 'package:http/http.dart' as http;

main() async {
  Uri url = Uri.parse('viacep.com.br/ws/76630000/json/');
  /*
      {
      "cep": "01001-000",
      "logradouro": "Praça da Sé",
      "complemento": "lado ímpar",
      "bairro": "Sé",
      "localidade": "São Paulo",
      "uf": "SP",
      "ibge": "3550308",
      "gia": "1004",
      "ddd": "11",
      "siafi": "7107"
    }
  */

  var response = await http.get(url);
  print('STATUS: ${response.statusCode}');
}
