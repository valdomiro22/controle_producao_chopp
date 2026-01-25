import '../../domain/entity/usuario_entity.dart';
import '../model/usuario_model.dart';

extension UsuarioModelToEntity on UsuarioModel {
  UsuarioEntity toEntity() {
    return UsuarioEntity(
      id: id,
      nome: nome,
      sobrenome: sobrenome,
      adicionadoEm: adicionadoEm,
      email: email,
    );
  }
}

extension UsuarioEntityToModel on UsuarioEntity {
  UsuarioModel toModel() {
    return UsuarioModel(
      id: id,
      nome: nome,
      sobrenome: sobrenome,
      adicionadoEm: adicionadoEm,
      email: email,
    );
  }
}