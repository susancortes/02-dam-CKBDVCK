/// Modelo de una receta obtenida desde https://dummyjson.com/recipes
class Receta {
  final int id;
  final String nombre;
  final String imagenUrl;
  final String cocina;
  final String dificultad;
  final int tiempoPreparacion;
  final int tiempoCoccion;
  final int porciones;
  final int caloriasPorPorcion;
  final double calificacion;
  final List<String> ingredientes;
  final List<String> instrucciones;

  const Receta({
    required this.id,
    required this.nombre,
    required this.imagenUrl,
    required this.cocina,
    required this.dificultad,
    required this.tiempoPreparacion,
    required this.tiempoCoccion,
    required this.porciones,
    required this.caloriasPorPorcion,
    required this.calificacion,
    required this.ingredientes,
    required this.instrucciones,
  });

  /// Construye una [Receta] a partir del JSON de DummyJSON.
  factory Receta.fromJson(Map<String, dynamic> json) {
    return Receta(
      id: json['id'] as int,
      nombre: json['name'] as String,
      imagenUrl: json['image'] as String,
      cocina: json['cuisine'] as String,
      dificultad: json['difficulty'] as String,
      tiempoPreparacion: json['prepTimeMinutes'] as int,
      tiempoCoccion: json['cookTimeMinutes'] as int,
      porciones: json['servings'] as int,
      caloriasPorPorcion: json['caloriesPerServing'] as int,
      calificacion: (json['rating'] as num).toDouble(),
      ingredientes: List<String>.from(json['ingredients'] as List<dynamic>),
      instrucciones: List<String>.from(json['instructions'] as List<dynamic>),
    );
  }
}