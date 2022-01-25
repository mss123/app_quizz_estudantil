import 'package:flutter/material.dart';
import 'Tela_categoria.dart';
import 'model.dart';

//Tela perguntas Matemática _ Difícil //
void main() => runApp(DecimaQuartaRota());

class DecimaQuartaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizz Estudantil',
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  var counter = 0;

  List qList = [
    Questions("1) O Eixo x é um eixo horizontal: ", true),
    Questions(
        "2) A função f(x) = x é ainda chamada de função identidade: ", true),
    Questions("3) 10 - 17 = 7", false),
    Questions("4) A fórmula da equação de 2º grau é : ax²+bx+c=0", true),
    Questions("5) 12 dividido por 24 = 2", false),
  ];

  var score = 0;

  checkWin(bool userChoice, BuildContext context) {
    if (userChoice == qList[counter].isCorrect) {
      print("correct");

      score = score + 20;
      final snackbar = SnackBar(
        duration: Duration(milliseconds: 1000),
        backgroundColor: Colors.green,
        content: Text("Você acertou!!"),
      );
      // ignore: deprecated_member_use
      Scaffold.of(context).showSnackBar(snackbar);
    } else {
      print("false");
      score = score + 0;
      final snackbar = SnackBar(
        duration: Duration(milliseconds: 1000),
        backgroundColor: Colors.red,
        content: Text("Você Errou!!"),
      );
      // ignore: deprecated_member_use
      Scaffold.of(context).showSnackBar(snackbar);
    }
    setState(() {
      if (counter < 4) {
        counter = counter + 1;
      }
    });
  }

  reset() {
    setState(() {
      counter = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.red.shade900],
                  begin: Alignment.topRight,
                  end: Alignment.topLeft)),
        ),
        title: Text(
          'Matemática',
          style: TextStyle(
              color: Colors.white70,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: ('Risque-Regular')),
        ),
        centerTitle: true,
      ),

      backgroundColor: Colors.yellowAccent[50], //tema de fundo da tela

      body: Builder(
        builder: (BuildContext context) => Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 60),
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Matemática.png"),
                      fit: BoxFit.fill),
                ),
              ),
              SizedBox(height: 50),
              Padding(padding: EdgeInsets.only(top: 30)),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Pontos : $score ",
                      style: TextStyle(
                          color: Colors.brown[900],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: ('Risque-Regular')),
                    ),
                    InkWell(
                      child: Text(
                        "Voltar",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red[900],
                            fontWeight: FontWeight.bold,
                            fontFamily: ('Risque-Regular')),
                      ),
                      //onTap: reset,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VigesimaRota()),
                        );
                      },
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: Colors.blue)),
                height: 90.0,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FittedBox(
                      child: Text(qList[counter].qText,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          )),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // ignore: deprecated_member_use
                  RaisedButton(
                    onPressed: () => checkWin(true, context),
                    padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                    child: Text(
                      "Verdadeiro",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: ('Risque-Regular')),
                    ),
                    color: Colors.green[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    onPressed: () => checkWin(false, context),
                    padding: EdgeInsets.fromLTRB(65.0, 20.0, 65.0, 20.0),
                    child: Text(
                      "Falso",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: ('Risque-Regular')),
                    ),
                    color: Colors.green[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
