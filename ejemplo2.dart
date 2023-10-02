import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() {
  String seguir = 'S';
  Random random = Random();

  while (seguir == 'S' || seguir == 's') {
    stdout.write('\n\n\tPrograma que procesa el registro de inventario!');
    stdout.write('\n\t-----------------------------------------------\n');
    sleep(Duration(milliseconds: 500));
    int n = random.nextInt(40) + 1;
    int s1 = 0, s2 = 0, s3 = 0, s4 = 0, s5 = 0, s6 = 0;
    double p1, p2, p3, p4, p5, p6;

    print('\n\tNúmero de artículos a procesar: $n');

    stdout.write('\n\tProceso de captura de datos y realización de cálculos');
    stdout.write('\n\t-----------------------------------------------------');
    print('');

    List<List<int>> registros = [];

    for (int j = 0; j < n; j++) {
      registros.add([]);
      registros[j].add(j + 1);
      registros[j].add(random.nextInt(100) + 1);
      registros[j].add(random.nextInt(10000) + 1);
      registros[j].add(random.nextInt(10000) + 100);
      registros[j].add(random.nextInt(100) + 1);

      s1 += registros[j][1];
      s2 += registros[j][2];
      s3 += registros[j][3];
      s4 += registros[j][4];
      registros[j].add(registros[j][1] - registros[j][4]);
      s5 += registros[j][5];
      registros[j].add(registros[j][4] * registros[j][3]);
      s6 += registros[j][6];
    }

    sleep(Duration(milliseconds: 500));
    p1 = s1 / n;
    p2 = s2 / n;
    p3 = s3 / n;
    p4 = s4 / n;
    p5 = s5 / n;
    p6 = s6 / n;

    stdout.write('\n\n\tNúmero de artículos procesados: $n\n\n');
    stdout.write('\n\tImprimir los datos de registro, resultados y estadísticas');
    stdout.write('\n\t---------------------------------------------------------\n');
    print('');
    stdout.write('\n\tCódigo\tStock\t Costo \t Precio\t Ventas\t Saldo\t Valor venta');
    stdout.write('\n\t------\t-----\t-------\t ------\t ------\t -----\t -----------');

    for (int j = 0; j < n; j++) {
      stdout.write('\n\t');
      for (int k = 0; k < 7; k++) {
        stdout.write('${registros[j][k]}\t');
        sleep(Duration(milliseconds: 500));
      }
    }

    print('');
    stdout.write('\n\t------\t-----\t-------\t ------\t ------\t -----\t -----------');
    print('');
    stdout.write('\n\tSumas\t$s1\t$s2\t$s3\t$s4\t$s5\t$s6');
    stdout.write('\n\tPromedio $p1\t$p2\t$p3\t$p4\t$p5\t$p6');
    print('');

    stdout.write('\n\tDesea operar otro registro: S o N\t');
    sleep(Duration(milliseconds: 500));
    seguir = (random.nextBool() ? 'S' : 'N');
  }

  print('\n\n\t');
  print('pause');
}