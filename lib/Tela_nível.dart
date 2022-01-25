import 'package:flutter/material.dart';
import 'Tela_categoria.dart'; //redireciona para a tela categoria

///Segunda Rota - Botões da tela_Nível///

class SegundaRota extends StatelessWidget {
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
                color: Colors.green[900], //cor do botão

                child: Text(
                  'Básico',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TerceiraRota()),
                  );
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),

            SizedBox(height: 20), // espaço entre os dois botões do FlatButton//

            // ignore: deprecated_member_use
            FlatButton(
                height: 50,
                padding: const EdgeInsets.only(top: 0, left: 70, right: 70),
                color: Colors.yellow[900], //cor do botão
                child: Text(
                  'Intermédio',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.5,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DecimaPrimeiraRota()),
                  );
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),
            // ignore: deprecated_member_use
            SizedBox(height: 20),
            // ignore: deprecated_member_use
            FlatButton(
                height: 50,
                padding: const EdgeInsets.only(top: 0, left: 70, right: 70),
                color: Colors.red[900], //cor do botão
                child: Text(
                  'Avançado',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.5,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VigesimaRota()),
                  );
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),
          ],
        ),
      ),
      backgroundColor: Colors.blue[400], //cor de fundo da tela
    );
  }
}
