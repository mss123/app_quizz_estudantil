import 'package:flutter/material.dart';
import 'Tela_perguntas.dart';
import 'Tela_básica_Mat.dart';
import 'Tela_básica_Port.dart';
import 'Tela_básica_Infa.dart';
import 'Tela_média_Var.dart';
import 'Tela_média_Mat.dart';
import 'Tela_média_Port.dart';
import 'Tela_média_Infa.dart';
import 'Tela_dificil_Var.dart';
import 'Tela_dificil_Mat.dart';
import 'Tela_dificil_Port.dart';
import 'Tela_dificil_Infa.dart';

class TerceiraRota extends StatelessWidget {
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
                  'Variedades',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuartaRota()),
                  );
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),

            SizedBox(height: 20), // espaço entre os dois botões do FlatButton//

            // ignore: deprecated_member_use
            FlatButton(
                height: 50,
                padding: const EdgeInsets.only(top: 0, left: 70, right: 70),
                color: Colors.indigo[800], //cor do botão
                child: Text(
                  'Matemática',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27.5,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuintaRota()),
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
                color: Colors.purple[900], //cor do botão
                child: Text(
                  'Português',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SextaRota()),
                  );
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),
            SizedBox(height: 20),
            // ignore: deprecated_member_use
            FlatButton(
                height: 50,
                padding: const EdgeInsets.only(top: 0, left: 70, right: 70),
                color: Colors.green[900], //cor do botão
                child: Text(
                  'Infantil',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SetimaRota()),
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

//// Décima primeira Rota - Botões da Tela_Categoria_Média////

class DecimaPrimeiraRota extends StatelessWidget {
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
                  'Variedades',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OitavaRota()),
                  );
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),

            SizedBox(height: 20), // espaço entre os dois botões do FlatButton//

            // ignore: deprecated_member_use
            FlatButton(
                height: 50,
                padding: const EdgeInsets.only(top: 0, left: 70, right: 70),
                color: Colors.indigo[800], //cor do botão
                child: Text(
                  'Matemática',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27.5,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NonaRota()),
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
                color: Colors.purple[900], //cor do botão
                child: Text(
                  'Português',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DecimaRota()),
                  );
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),
            SizedBox(height: 20),
            // ignore: deprecated_member_use
            FlatButton(
                height: 50,
                padding: const EdgeInsets.only(top: 0, left: 70, right: 70),
                color: Colors.green[900], //cor do botão
                child: Text(
                  'Infantil',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DecimaSegundaRota()),
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

//// Vigesima Rota - Botões da Tela_Categoria_Difícil////

class VigesimaRota extends StatelessWidget {
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
                  'Variedades',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DecimaTerceiraRota()),
                  );
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),

            SizedBox(height: 20), // espaço entre os dois botões do FlatButton//

            // ignore: deprecated_member_use
            FlatButton(
                height: 50,
                padding: const EdgeInsets.only(top: 0, left: 70, right: 70),
                color: Colors.indigo[800], //cor do botão
                child: Text(
                  'Matemática',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27.5,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DecimaQuartaRota()),
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
                color: Colors.purple[900], //cor do botão
                child: Text(
                  'Português',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DecimaQuintaRota()),
                  );
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),
            SizedBox(height: 20),
            // ignore: deprecated_member_use
            FlatButton(
                height: 50,
                padding: const EdgeInsets.only(top: 0, left: 70, right: 70),
                color: Colors.green[900], //cor do botão
                child: Text(
                  'Infantil',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Risque-Regular'), //cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DecimaSextaRota()),
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
