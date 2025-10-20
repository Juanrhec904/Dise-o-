import 'package:dio/dio.dart';
import 'package:app/model/modelo.dart';

class DioApi {
  final Dio _dio = Dio();

  Future<List<Usuario>> getUsuarios() async {
    try {
      final response = await _dio.get(
        'https://mocki.io/v1/6c8a4867-b5ce-4a61-97b4-550dfea91473',
      );

      if (response.statusCode == 200) {
        final List data = response.data;
        return data.map((e) => Usuario.fromJson(e)).toList();
      } else {
        throw Exception('Error al obtener usuarios');
      }
    } catch (e) {
      throw Exception('Error en la petición GET: $e');
    }
  }
}
