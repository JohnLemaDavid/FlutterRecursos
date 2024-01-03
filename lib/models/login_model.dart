class UserCredentials {
  final String usuario;
  final String clave;

  UserCredentials({required this.usuario, required this.clave});

  // Añade el método copyWith.
  UserCredentials copyWith({
    String? usuario,
    String? clave,
  }) {
    return UserCredentials(
      // Si el usuario/clave no es proporcionado, usa el valor actual.
      usuario: usuario ?? this.usuario,
      clave: clave ?? this.clave,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Usuario': usuario,
      'Clave': clave,
    };
  }
}

class UserResponse {
    String usuario;
    String nombre;
    DateTime fechaSistema;
    String token;

    UserResponse({
        required this.usuario,
        required this.nombre,
        required this.fechaSistema,
        required this.token,
    });

    factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        usuario: json["usuario"],
        nombre: json["nombre"],
        fechaSistema: DateTime.parse(json["fechaSistema"]),
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "usuario": usuario,
        "nombre": nombre,
        "fechaSistema": fechaSistema.toIso8601String(),
        "token": token,
    };
}

