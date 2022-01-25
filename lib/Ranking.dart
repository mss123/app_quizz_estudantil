import 'package:flutter/material.dart';
import 'package:projeto_prog_mobile/main.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navegação Básica',
    home: DecimaSetimaRota(),
  ));
}

//// Primeira Rota - Botões da tela principal ////

class DecimaSetimaRota extends StatelessWidget {
  // classe principal da primeira tela

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: deprecated_member_use
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // coloca a logo no topo
          children: [
            Text('Ranking',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontFamily: 'Risque-Regular')),
            SizedBox(height: 10),
            Container(
              width: 125,
              height: 125,
              child: Image.asset('assets/images/taca.png'),
            ), //logo do quizz Estudantil
            SizedBox(height: 100), //que dar espaço da logo para os botões

            // ignore: deprecated_member_use
            FlatButton(
                height: 50,
                padding: EdgeInsets.only(top: 0, left: 38, right: 38),
                color: Colors.yellowAccent, //cor do botão
                child: Text(
                  '1º - Rodrigo - 250 pontos',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),
            SizedBox(height: 20),
            // ignore: deprecated_member_use
            FlatButton(
                height: 50,
                padding: EdgeInsets.only(top: 0, left: 40, right: 40),
                color: Colors.grey, //cor do botão
                child: Text(
                  '2º - Victor - 220 pontos',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),
            SizedBox(height: 20),
            // ignore: deprecated_member_use
            FlatButton(
                height: 50,
                padding: EdgeInsets.only(top: 0, left: 40, right: 40),
                color: Colors.brown, //cor do botão
                child: Text(
                  '3º - Artur - 200 pontos',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.5,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),

            SizedBox(height: 60),

            // ignore: deprecated_member_use
            FlatButton(
                height: 50,
                padding: const EdgeInsets.only(top: 0, left: 80, right: 80),
                color: Colors.red[900], //cor do botão
                child: Text(
                  'Voltar',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.5,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PrimeiraRota()),
                  );
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
