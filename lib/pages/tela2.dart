import 'package:flutter/material.dart';
import 'package:mvpfun/pages/tela3.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SegundaTela(),
    );
  }
}

class SegundaTela extends StatefulWidget {
  @override
  _SegundaTelaState createState() => _SegundaTelaState();
}

class _SegundaTelaState extends State<SegundaTela> {
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
              SizedBox(height: 10),
              GestureDetector(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Align(
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/tela2.png',
                            height: 350,
                            width: 500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Visão Geral',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'YoungSerif',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(Icons
                          .access_alarm, color: Colors.black54,), 
                      Text(
                        '8 horas',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Urbanist',
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 100), 
                  Column(
                    children: [
                      Icon(
                          Icons.cloud, color: Colors.black54,), 
                      Text(
                        '35°C',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Urbanist',
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 100), 
                  Column(
                    children: [
                      Icon(Icons.star, color: Colors.black54,), 
                      Text(
                        '4.8',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Urbanist',
                        ),
                      )
                    ],
                  ),
                ],
              ),

              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'São Paulo é um das 27 unidades federativas do Brasil. Está situado na região',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Urbanist',
                    fontSize: 12,
                  ),
                ),
              ]
              ),
               Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Sudeste. Atualmente com 44 milhões de habitantes ou cerca de 22%',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Urbanist',
                    fontSize: 12,
                  ),
                ),
              ]
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'população brasileira, sendo o estado mais populoso do Brasil. ',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Urbanist',
                    fontSize: 12,
                  ),
                ),
              ]
              ),
              SizedBox(height: 20),
             GestureDetector(
  onTap: () {
Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TerceiraTela()),
             );
  },
  child: Stack(
    children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: Align(
          alignment: Alignment.center,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/tela22.png',
              height: 80,
            ),
          ),
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
