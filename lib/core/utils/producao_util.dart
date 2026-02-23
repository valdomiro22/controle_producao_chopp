class ProducaoUtil {
  static double calcularVolumeNecessario(int quantidade, int volumeBarril) {
    final vlNecessario = quantidade * volumeBarril / 100.0;
    return vlNecessario;
  }
}