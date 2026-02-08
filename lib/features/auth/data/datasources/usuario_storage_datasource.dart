import 'package:share_plus/share_plus.dart';

abstract class UsuarioStorageDatasource {
  Future<void> insertArquivo({required XFile foto, required String usuarioId});

  Future<String?> getArquivo(String arquivoUrl);

  Future<void> deleteArquivo(String arquivoUrl);

  Future<List<String>> getAllArquivos(String usuarioId);
}
