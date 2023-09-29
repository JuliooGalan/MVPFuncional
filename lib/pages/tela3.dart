import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TerceiraTela(),
    );
  }
}

class TerceiraTela extends StatefulWidget {
  @override
  _TerceiraTelaState createState() => _TerceiraTelaState();
}

class _TerceiraTelaState extends State<TerceiraTela> {
  List<Color> buttonColors = [
    Colors.grey,
    Colors.grey,
    Colors.grey,
  ];

  Color bonecoColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 430,
          height: 932,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Color.fromARGB(255, 117, 178, 228),
              ],
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Align(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/tela3.png',
                          height: 200,
                          width: 400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Próxima carona em 14 minutos',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'YoungSerif',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Align(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/motorista.png',
                          height: 200,
                          width: 400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 100), 
              Row(
                
                children: [
                  Icon(Icons.add_location_alt_outlined), // Ícone que você deseja usar
                  SizedBox(width: 20), // Espaço entre o ícone e o texto
                  Text(
                    'Ponto de partida',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'YoungSerif',
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
