class UsuarioModel {
  String id;
  String email;
  String senha;

  UsuarioModel({
    required this.id,
    required this.email,
    required this.senha,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'senha': senha,
      };
}
