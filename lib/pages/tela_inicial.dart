import 'package:flutter/material.dart';
import 'login.dart'; 

class TelaInicial extends StatelessWidget {
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
              Colors.white, Color.fromARGB(255, 117, 178, 228),
            ],
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                 padding: const EdgeInsets.all(10),
                child: Image.asset('assets/images/logo.png',
                height: 300,),
              ),
              Text(
                'Moturb',
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontWeight: FontWeight.w400,
                  fontSize: 44,
                  color: Colors.black,
                  
                ),
              ),
              SizedBox(height: 80),
              ElevatedButton(
              onPressed: () {
                // Navegue para a tela de login usando a rota nomeada.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
                },
                
                 style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(12.0),
                minimumSize: Size(200, 50),
                  primary: Color.fromARGB(255, 121, 108, 107), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),

              ),
              child: Text('Entrar',
              style: TextStyle(
                fontFamily: 'YoungSerif',
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

