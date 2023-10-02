import 'dart:io';

void main() {
  List<List<int>> votar = [
    [250, 750, 500, 450, 600, 750, 800],
    [350, 500, 650, 700, 850, 900, 950],
    [400, 250, 300, 600, 750, 550, 850],
    [300, 900, 700, 500, 400, 650, 750]
  ];

  // El código restante para procesar los datos, como cálculos, puede permanecer igual.
  
  print('\n\tDatos de votación');
  for (int j = 0; j < 4; j++) {
    print('\n\tZona ${votar[j][0]}:');
    for (int k = 1; k < 7; k++) {
      print('\tCandidato ${k}: ${votar[j][k]} votos');
    }
  }
}