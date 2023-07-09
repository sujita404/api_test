import 'package:dio/dio.dart';

const String baseUrl = "https://jsonplaceholder.typicode.com";
const String postApi = "/posts";

Dio dio = Dio();
Future<dynamic> getPost() async {
  Response res = await dio.get(baseUrl + postApi);
  return res.data;
  // print(res.data);
}
