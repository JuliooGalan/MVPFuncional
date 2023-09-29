import 'package:flutter/material.dart';
import 'package:mvpfun/pages/tela2.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraTela(),
    );
  }
}

class PrimeiraTela extends StatefulWidget {
  @override
  _PrimeiraTelaState createState() => _PrimeiraTelaState();
}

class _PrimeiraTelaState extends State<PrimeiraTela> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Olá Lucas',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'YoungSerif',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/perfil.png',
                            fit: BoxFit.cover,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('ㅤ'),
                    ],
                  )
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Para onde vamos?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Urbanist',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    hintText:
                        'Procurar por carona                                    |',
                    suffixIcon: Icon(Icons.settings_ethernet),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ㅤㅤLugares Populares',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Urbanist',
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    'Ver tudoㅤㅤ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Urbanist',
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        buttonColors[0] = const Color.fromARGB(255, 61, 61, 61);
                        buttonColors[1] = Colors.grey;
                        buttonColors[2] = Colors.grey;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: buttonColors[0],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      'Em alta',
                      style: TextStyle(
                        color: Colors.white, fontFamily: 'Urbanist'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        buttonColors[0] = Colors.grey;
                        buttonColors[1] = const Color.fromARGB(255, 61, 61, 61);
                        buttonColors[2] = Colors.grey;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: buttonColors[1],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      'Perto de mim',
                      style: TextStyle(
                        color: Colors.white, fontFamily: 'Urbanist'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        buttonColors[0] = Colors.grey;
                        buttonColors[1] = Colors.grey;
                        buttonColors[2] = const Color.fromARGB(255, 61, 61, 61);
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: buttonColors[2],
                    ),
                    child: Text(
                      'Anterior',
                      style: TextStyle(
                        color: Colors.white, fontFamily: 'Urbanist'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
             GestureDetector(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SegundaTela())
    );
  },
  child: Stack(
    children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/tela1.png',
              height: 350,
            ),
          ),
        ),
      ),
    ],
  ),
),

              
              Container(
                height: 50,
                width: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(Icons.home),
                      onPressed: () {
                        // Adicione a ação desejada aqui
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.punch_clock),
                      onPressed: () {
                        // Adicione a ação desejada aqui
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.monitor_heart),
                      onPressed: () {
                        // Adicione a ação desejada aqui
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.verified_user),
                      onPressed: () {
                        // Adicione a ação desejada aqui
                      },
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
