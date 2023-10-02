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
              
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.add_location_alt_outlined, color: Colors.black45,), 
                    SizedBox(width: 5),
                    Text(
                      'Ponto de partida',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'YoungSerif',
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Text(
                      'AC Santos, Rua idade de Toledo 41, Centro, Santos - SP',
                      style: TextStyle(
                        color: Colors.black45,
                        fontFamily: 'YoungSerif',
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.access_alarm, color: Colors.black45,), 
                    SizedBox(width: 5),
                    Text(
                      'Tempo de Viagem',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'YoungSerif',
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Text(
                      '38 min',
                      style: TextStyle(
                        color: Colors.black45,
                        fontFamily: 'YoungSerif',
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.add_location_alt_outlined, color: Colors.black45,), 
                    SizedBox(width: 5),
                    Text(
                      'Ponto de chegada',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'YoungSerif',
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Text(
                      'FIAP, Av. Lins de Vasconcelos, 122 - Aclimação, São Paulo',
                      style: TextStyle(
                        color: Colors.black45,
                        fontFamily: 'YoungSerif',
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
