import 'dart:io';

void main() {
  String seguir = 'S';

  while (seguir == 'S' || seguir == 's') {
    List<String> nom = ['Usuario1', 'Usuario2', 'Usuario3'];
    List<String> aseso = ['Financiera', 'Contable', 'Comercial'];
    List<int> nuse = [3, 4, 5];
    List<int> cose = [80000, 75000, 50000];
    int nusu = nom.length;
    String nome = '';
    String noma = '';
    int men = 50000000;
    int may = 0;
    int sum = 0;
    double prom;
    
    // Declara la variable costo como una lista de enteros.
    List<int> costo = List.filled(nusu, 0);

    stdout.write('\n\tProceso captura y procesamiento de datos');
    stdout.write('\n\t----------------------------------------');

    for (int j = 0; j < nusu; j++) {
      costo[j] = cose[j] * nuse[j];

      if (costo[j] < men) {
        men = costo[j];
        nome = nom[j];
      }
      if (costo[j] > may) {
        may = costo[j];
        noma = nom[j];
      }
      sum += costo[j];
    }

    prom = sum / nusu;

    stdout.write('\n\tImprimir datos de usuarios y resultados');
    stdout.write('\n\t---------------------------------------');
    stdout.write('\n\n\tNo.\t Usuario \t Asesoría \t Sesiones\t Costo total');
    stdout.write('\n\t---\t-------------\t--------------\t--------\t-----------');

    for (int j = 0; j < nusu; j++) {
      stdout.write('\n\t${j + 1}\t${nom[j]} \t${aseso[j]}\t ${nuse[j]}\t\t${costo[j]}');
    }

    stdout.write('\n\n\tEstadísticas de costo sesiones');
    stdout.write('\n\t------------------------------');
    stdout.write('\n\tNúmero de usuarios procesados:\t$nusu');
    stdout.write('\n\tUsuario con mayor costo total\t$noma con $may');
    stdout.write('\n\tUsuario con menor costo total\t$nome con $men');
    stdout.write('\n\tSumatoria del costo total \t$sum');
    stdout.write('\n\tPromedio del costo total \t${prom.toStringAsFixed(2)}');

    stdout.write('\n\n\tDesea procesar otro grupo de usuarios: S o N\t');
    seguir = (stdin.readLineSync() ?? '').toUpperCase();

    while (seguir != 'S' && seguir != 'N') {
      stdout.write('\n\tError. Digite S o N\t');
      seguir = (stdin.readLineSync() ?? '').toUpperCase();
    }
  }

  stdout.write('\n\n\t');
  stdout.write('pause');
}