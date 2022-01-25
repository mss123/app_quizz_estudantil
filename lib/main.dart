import 'package:flutter/material.dart';
import 'Tela_nível.dart'; //redireciona para a tela nível
import 'Ranking.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navegação Básica',
    home: PrimeiraRota(),
  ));
}

//// Primeira Rota - Botões da tela principal ////

class PrimeiraRota extends StatelessWidget {
  // classe principal da primeira tela

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: deprecated_member_use
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // coloca a logo no topo
          children: [
            Container(
              width: 220,
              height: 220,
              child: Image.asset('assets/images/logo.png'),
            ), //logo do quizz Estudantil
            SizedBox(height: 60), //que dar espaço da logo para os botões
            // ignore: deprecated_member_use
            FlatButton(
                height: 50,
                padding: const EdgeInsets.only(top: 0, left: 70, right: 70),
                color: Colors.red[900], //cor do botão

                child: Text(
                  'Jogar',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SegundaRota()),
                  );
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),

            SizedBox(height: 20), // espaço entre os dois botões do FlatButton//

            // ignore: deprecated_member_use
            FlatButton(
                height: 50,
                padding: const EdgeInsets.only(top: 0, left: 70, right: 70),
                color: Colors.blue[900], //cor do botão
                child: Text(
                  'Ranking',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.5,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DecimaSetimaRota()),
                  );
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),
          ],
        ),
      ),
      backgroundColor: Colors.blue[400],
    );
  }
}
