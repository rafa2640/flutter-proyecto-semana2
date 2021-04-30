import 'package:flutter/material.dart';

class ResultadoPage extends StatelessWidget {
  final int edad, peso, estatura;
  final bool genero;
  String resultado = "", mensaje = "";
  double valor = 0;
  Color color = Colors.white;

  ResultadoPage(
      {required this.edad,
      required this.peso,
      required this.estatura,
      required this.genero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    _calculo();
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
          child: Text(
            "Resultado",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[800],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Text(
                    "$resultado",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: color),
                  ),
                ),
                Center(
                  child: Text(
                    "$valor",
                    style: TextStyle(fontSize: 90, fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    "$mensaje",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 90,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.pink)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Calcular",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  void _calculo() {
    valor = estatura / 100;
    valor *= valor;
    valor = peso / valor;
    valor = double.parse(valor.toStringAsFixed(1));
    if (valor < 18.5) {
      resultado = "BAJO PESO";
      mensaje = "Su peso corporal esta bajo. ¡Cuidado!";
      color = Colors.yellow;
    } else if (valor < 24.9) {
      resultado = "PESO NORMAL";
      mensaje = "Su peso corporal esta normal. ¡Buen trabajo!";
      color = Colors.green;
    } else if (valor < 29.9) {
      resultado = "SOBREPESO";
      mensaje = "Cuidado usted tiene sobrepeso. ¡Por favor tomar medidas!";
      color = Colors.yellow;
    } else if (valor < 34.5) {
      resultado = "OBESIDAD GRADO I";
      mensaje = "Usted Tiene obesidad nivel 1. ¡Ten cuidado, esto es una enfermedad!";
      color = Colors.amber;
    } else if (valor < 39.9) {
      resultado = "OBESIDAD GRADO II";
      mensaje = "Usted tiene obesidad nivel 2. Por favor cuidese, esto es grave!";
      color = Colors.orange;
    } else {
      resultado = "OBESIDAD GRADO III";
      mensaje = "Usted tiene obesidad nivel 3. Cuidado, alerta roja, su salud corre peligro!";
      color = Colors.red;
    }
  }
}
