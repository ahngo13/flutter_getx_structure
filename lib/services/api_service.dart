import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response> getPosts() async {
    var response = await _dio.get('https://jsonplaceholder.typicode.com/posts');
    return response;
  }
}