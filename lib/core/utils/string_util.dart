import 'dart:developer' as dev;

import 'package:intl/date_symbol_data_local.dart' as date_local_data;
import 'package:intl/intl.dart';

class StringUtil {
  static String? formatarData(String? data) {
    date_local_data.initializeDateFormatting('pt_BR');
    final formatador = DateFormat.yMd('pt_br');

    if (data != null) {
      DateTime dataConvertida = DateTime.parse(data);
      String dataFormatada = formatador.format(dataConvertida);
      return dataFormatada;
    } else {
      return null;
    }
  }

  static String? formatarDataComPontos(String? data) {
    date_local_data.initializeDateFormatting('pt_BR');
    final formatador = DateFormat('dd.MM.yyyy', 'pt_br');

    if (data != null) {
      DateTime dataConvertida = DateTime.parse(data);
      String dataFormatada = formatador.format(dataConvertida);
      return dataFormatada;
    } else {
      return null;
    }
  }

  static DateTime? stringParaDateTime(String data) {
    try {
      final DateFormat format = DateFormat('dd/MM/yyyy');
      DateTime novaData = format.parse(data);
      return novaData;
    } catch (e) {
      dev.log('Erro ao formatar data');
      return null;
    }
  }

  static String formatarDataBarrasParaPontos(String data) {
    return data.replaceAll('/', '.');
  }

  static formatarHora(String data) async {
    await date_local_data.initializeDateFormatting('pt_BR');
    final formatador = DateFormat.Hms('pt_br');

    DateTime dataConvertida = DateTime.parse(data);
    String dataFormatada = formatador.format(dataConvertida);
    return dataFormatada;
  }

  static String formatarHoraSincrona(String data) {
    final formatador = DateFormat.Hms('pt_BR');
    final dataConvertida = DateTime.parse(data);
    return formatador.format(dataConvertida);
  }

  static String capitalize(String text) {
    if (text.isEmpty) {
      return '';
    }
    return '${text[0].toUpperCase()}${text.substring(1).toLowerCase()}';
  }
}