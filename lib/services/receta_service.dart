import 'dart:convert';

import 'package:app_gastro/models/receta.dart';
import 'package:http/http.dart' as http;

/// Servicio que consume el endpoint /recipes de DummyJSON.
class RecetaService {
  static const String _baseUrl = 'https://dummyjson.com/recipes';

  /// Obtiene la lista de recetas. Lanza una [Exception] si la petición falla.
  Future<List<Receta>> getRecetas() async {
    final Uri url = Uri.parse(_baseUrl);
    final http.Response respuesta = await http.get(url);

    if (respuesta.statusCode != 200) {
      throw Exception('Error al obtener las recetas: ${respuesta.statusCode}');
    }

    final Map<String, dynamic> datos =
        jsonDecode(respuesta.body) as Map<String, dynamic>;
    final List<dynamic> listaRecetas = datos['recipes'] as List<dynamic>;

    return listaRecetas
        .map((recetaJson) => Receta.fromJson(recetaJson as Map<String, dynamic>))
        .toList();
  }
}