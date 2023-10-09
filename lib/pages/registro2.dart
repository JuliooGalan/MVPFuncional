import 'package:flutter/material.dart';
import 'package:mvpfun/pages/login.dart';

class Registro2 extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro2> {
bool _termsAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 430,
          height: 932,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Moturb',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Lobster',
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 60),
              TextWidget(
                characters: 'CEP',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Urbanist',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 10),
              Container(
                height: 40,
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'CEP',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              TextWidget(
                characters: 'Estado',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Urbanist',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 10),
              Container(
                height: 40,
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Estado',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              TextWidget(
                characters: 'Cidade',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Urbanist',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 10),
              Container(
                height: 40,
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cidade',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              TextWidget(
                characters: 'Bairro',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Urbanist',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 10),
              Container(
                height: 40,
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Bairro',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              TextWidget(
                characters: 'Endereço',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Urbanist',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),

             SizedBox(height: 10),
              Container(
                height: 40,
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Endereço',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                    Checkbox(
                  value: _termsAgreed,
                  onChanged: (value) {
                  setState(() {
                _termsAgreed = value!;
              });
      },
    ),
                  Text(
                    "Ao se registrar você concorda com nossos termos e condições",
                    style: TextStyle(
                      fontSize: 12, 
                      fontFamily: 'Urbanist'
                 ),
               ),
             ],
            ),

 
              SizedBox(height: 20),
              Align(
                     alignment: Alignment.centerRight,
                        child: TextButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
             );
         },
                 child: Text(
                  'Concluído',
                     style: TextStyle(
                  fontSize: 15, 
                  color: Colors.black,
                 fontWeight: FontWeight.bold, 
                 fontFamily: 'YoungSerif',
                  ),
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

class TextWidget extends StatelessWidget {
  final String characters;
  final TextStyle style;

  const TextWidget({Key? key, required this.characters, required this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(characters, style: style);
  }
}
