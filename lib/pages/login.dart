import 'package:flutter/material.dart';
import 'package:mvpfun/pages/registro.dart';
import 'package:mvpfun/pages/tela1.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 430,
          height: 632,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Color.fromARGB(255, 117, 178, 228),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'Moturb',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Lobster',
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 70),
              Text(
                "Bem Vindo de volta",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Color.fromARGB(255, 3, 238, 247),
                    fontFamily: 'YoungSerif'),
              ),
              SizedBox(height: 55),
              Text(
                'E-mail', 
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Urbanist',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'ex.@gmail.com',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Senha',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Urbanist',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
                width: 400,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Esqueceu a senha?',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Urbanist',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PrimeiraTela()),
                      );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 17, 17, 17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'Login',
                  style:
                      TextStyle(color: Colors.white, fontFamily: 'YoungSerif'),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Primeiro acesso?',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Urbanist',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Registro()),
                      );
                    },
                    child: Text(
                      'Registre-se',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 253, 0, 0),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'YoungSerif',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
