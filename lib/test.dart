import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

void main(List<String> args) {
  var jsonData = '''
{
   "breeds": [],
   "id":"MTg2NTAwMw",
   "url":"https://cdn2.thecatapi.com/images/MTg2NTAwMw.jpg",
   "width":469,
   "height":324
}
  ''';

  var decodedJson = convert.jsonDecode(jsonData);
  var catImage = CatImage.fromJson(decodedJson);
  print(decodedJson.runtimeType);
  print(catImage.id);
  print(catImage.url);

  //-------------------
  // var catImage = CatImage(
  //     id: "27t28t", url: "https://cdn2.thecatapi.com/images/MTg2NTAwMw.jpg");

  // var jsonData = catImage.toJson();
  // var json = convert.jsonEncode(jsonData);

  // print(jsonData.runtimeType);
  // print(json.runtimeType);
}

class CatImage {
  late String id;
  late String url;

  CatImage({
    required this.id,
    required this.url,
  });

  CatImage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    return data;
  }
}
