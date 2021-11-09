import 'package:cv_project/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV- Karol Arciniegas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'CV Karol Arciniegas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _url = '';

  @override
  void initState() {
    super.initState();
    _url = Uri.encodeFull('https://www.linkedin.com/in/karolg-arciniegasm');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: Column(
                    children: <Widget>[
                      datosBasicos(),
                      SizedBox(height: 20),
                      perfilProfesional(),
                      SizedBox(height: 20),
                      habilidades(),
                    ],
                  )),
              SizedBox(width: MediaQuery.of(context).size.width * 0.05),
              Expanded(
                  child: Container(
                      child: Column(children: <Widget>[
                nombre(),
                SizedBox(height: 20),
                experiencia(),
                SizedBox(height: 20),
                formacionAcademica(),
                SizedBox(height: 20),
                referenciasPersonales(),
                SizedBox(
                  height: 50,
                ),
                firma(),
                SizedBox(
                  height: 20,
                )
              ]))),
            ],
          ),
        ]),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Container datosBasicos() {
    return Container(
        child: Column(children: <Widget>[
      Image.asset(
        "foto.png",
        height: 150,
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "Karol Gisselle Arciniegas Martinez",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "3173254165\nkarolgisselle98@hotmail.com",
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 10,
      ),
      TextButton(
          onPressed: () {
            _launchLinkedIn();
          },
          child: Text(
            "linkedIn: karolg-arciniegasm",
            style: TextStyle(fontWeight: FontWeight.normal, color: darkBlue),
            textAlign: TextAlign.center,
          )),
    ]));
  }

  Container perfilProfesional() {
    return Container(
        child: Column(
      children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width,
            color: darkBlue,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "PERFIL PROFESIONAL",
                style: TextStyle(color: white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )),
        SizedBox(height: 10),
        Text(
          "Ingeniera electrónica con gran interés en el campo del desarrollo de software y la seguridad de la información, motivada por el aprendizaje continuo, responsable, activa, recursiva y autónoma, con habilidades comunicativas en inglés, con experiencia en desarrollo backend en lenguaje Java, y frontend en aplicaciones móviles con flutter, conocimiento de lógica de negocios y manejo de git.",
          textAlign: TextAlign.justify,
        )
      ],
    ));
  }

  Container habilidades() {
    return Container(
        child: Column(children: <Widget>[
      Container(
          width: MediaQuery.of(context).size.width,
          color: darkBlue,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "HABILIDADES",
              style: TextStyle(color: white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          )),
      SizedBox(height: 10),
      Text(
        "TRABAJO",
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
      SizedBox(height: 10),
      Row(
        children: <Widget>[
          Expanded(
            child: Text(
              "JAVA",
              style: TextStyle(fontSize: 13),
            ),
          ),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: softBlue, size: 20),
          Icon(Icons.circle, color: softBlue, size: 20)
        ],
      ),
      SizedBox(height: 5),
      Row(
        children: <Widget>[
          Expanded(
              child: Text(
            "HTML5 - CSS3",
            style: TextStyle(fontSize: 13),
          )),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: softBlue, size: 20),
          Icon(Icons.circle, color: softBlue, size: 20)
        ],
      ),
      SizedBox(height: 5),
      Row(
        children: <Widget>[
          Expanded(
              child: Text(
            "GIT - GITFLOW",
            style: TextStyle(fontSize: 13),
          )),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: softBlue, size: 20)
        ],
      ),
      SizedBox(height: 5),
      Row(
        children: <Widget>[
          Expanded(
              child: Text(
            "FLUTTER",
            style: TextStyle(fontSize: 13),
          )),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: softBlue, size: 20)
        ],
      ),
      SizedBox(height: 5),
      Row(
        children: <Widget>[
          Expanded(
              child: Text(
            "SQL - MYSQL",
            style: TextStyle(fontSize: 13),
          )),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: softBlue, size: 20)
        ],
      ),
      SizedBox(height: 5),
      SizedBox(height: 20),
      Text(
        "PERSONAL",
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
      SizedBox(height: 10),
      Row(
        children: <Widget>[
          Expanded(
              child: Text(
            "COMUNICACIÓN",
            style: TextStyle(fontSize: 13),
          )),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: softBlue, size: 20)
        ],
      ),
      SizedBox(height: 5),
      Row(
        children: <Widget>[
          Expanded(
              child: Text(
            "ORGANIZACIÓN",
            style: TextStyle(fontSize: 13),
          )),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20)
        ],
      ),
      SizedBox(height: 5),
      Row(
        children: <Widget>[
          Expanded(
              child: Text(
            "AUTONOMÍA",
            style: TextStyle(fontSize: 13),
          )),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: softBlue, size: 20)
        ],
      ),
      SizedBox(height: 5),
      Row(
        children: <Widget>[
          Expanded(
              child: Text(
            "CREATIVIDAD",
            style: TextStyle(fontSize: 13),
          )),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: softBlue, size: 20)
        ],
      ),
      SizedBox(height: 5),
      Row(
        children: <Widget>[
          Expanded(
              child: Text(
            "EMPATÍA",
            style: TextStyle(fontSize: 13),
          )),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: darkBlue, size: 20),
          Icon(Icons.circle, color: softBlue, size: 20)
        ],
      )
    ]));
  }

  Container nombre() {
    return Container(
        child: Column(children: <Widget>[
      Text("Karol Gisselle Arciniegas Martinez",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: darkBlue),
          textAlign: TextAlign.center),
      Text("Ingeniera electrónica",
          style: TextStyle(
              fontWeight: FontWeight.normal, fontSize: 20, color: gray),
          textAlign: TextAlign.center),
    ]));
  }

  Container experiencia() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width,
            color: darkBlue,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "EXPERIENCIA",
                style: TextStyle(color: white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )),
        SizedBox(height: 10),
        Text(
          "(2019 - 2021)",
          style: TextStyle(color: gray, fontSize: 13),
          textAlign: TextAlign.right,
        ),
        Text(
          "ESPECIALISTA EN DESARROLLO CORREO",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 5),
        Text(
          "mi.com.co - cajero.co",
          style: TextStyle(color: softBlue, fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
        ),
        Text(
          "Soporte técnico de producto: correo corporativo.\nDesarrollo backend con DAGGER 2  y Spring en lenguaje JAVA.\nDesarrollo de cortes publicitarios en HTML.\nDesarrollo de aplicación móvil en Flutter.",
          style: TextStyle(fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 20),
        Text(
          "(2021 - actualidad)",
          style: TextStyle(color: gray, fontSize: 13),
          textAlign: TextAlign.right,
        ),
        Text(
          "JAVA DEVELOPER",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 5),
        Text(
          "IBM",
          style: TextStyle(color: softBlue, fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
        ),
        Text(
          "Migracion de APIs con APIConnect.\nDespliegue en ambientes con Azure DevOps.",
          style: TextStyle(fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
        ),
      ],
    ));
  }

  Container formacionAcademica() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width,
            color: darkBlue,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "FORMACIÓN ACADÉMICA",
                style: TextStyle(color: white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )),
        SizedBox(height: 10),
        Text(
          "(2019 - 2020)",
          style: TextStyle(color: gray, fontSize: 13),
          textAlign: TextAlign.right,
        ),
        Text(
          "ESPECIALIZACIÓN EN GERENCIA DE MANTENIMIENTO",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 5),
        Text(
          "Universidad Escuela Colombiana de Carreras Industriales ECCI",
          style: TextStyle(color: softBlue, fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 10),
        Text(
          "(2015 - 2020)",
          style: TextStyle(color: gray, fontSize: 13),
          textAlign: TextAlign.right,
        ),
        Text(
          "INGENIERÍA ELECTRÓNICA",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 5),
        Text(
          "Universidad Escuela Colombiana de Carreras Industriales ECCI",
          style: TextStyle(color: softBlue, fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 10),
        Text(
          "(2015 - 2017)",
          style: TextStyle(color: gray, fontSize: 13),
          textAlign: TextAlign.right,
        ),
        Text(
          "TECNOLOGÍA EN ELECTRÓNICA INDUSTRIAL",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 5),
        Text(
          "Universidad Escuela Colombiana de Carreras Industriales ECCI",
          style: TextStyle(color: softBlue, fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 10),
        Text(
          "(2015 - 2017)",
          style: TextStyle(color: gray, fontSize: 13),
          textAlign: TextAlign.right,
        ),
        Text(
          "TECNOLOGÍA EN SOPORTE DE TELECOMUNICACIONES",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 5),
        Text(
          "Universidad Escuela Colombiana de Carreras Industriales ECCI",
          style: TextStyle(color: softBlue, fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 10),
        Text(
          "(2017 - 2018)",
          style: TextStyle(color: gray, fontSize: 13),
          textAlign: TextAlign.right,
        ),
        Text(
          "INGLES B2",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 5),
        Text(
          "Universidad Escuela Colombiana de Carreras Industriales ECCI",
          style: TextStyle(color: softBlue, fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 10),
        Text(
          "(2012 - 2014)",
          style: TextStyle(color: gray, fontSize: 13),
          textAlign: TextAlign.right,
        ),
        Text(
          "INGLES B2",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 5),
        Text(
          "Instituto de lenguas de la Universidad Distrital ILUD",
          style: TextStyle(color: softBlue, fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 20),
        Text(
          "EDUCACION NO FORMAL",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: darkBlue, fontSize: 16),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 10),
        Text(
          "(2021)",
          style: TextStyle(color: gray, fontSize: 13),
          textAlign: TextAlign.right,
        ),
        Text(
          "DIPLOMADO EN HABILIDADES EN PROGRAMACIÓN CON ENFASIS EN APLICACIONES WEB MISIÓN TIC 2022 - CICLO 4",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 5),
        Text(
          "Universidad de Caldas",
          style: TextStyle(color: softBlue, fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
        ),
        Text(
          "(2020 - 2021)",
          style: TextStyle(color: gray, fontSize: 13),
          textAlign: TextAlign.right,
        ),
        Text(
          "DIPLOMADO EN CODIFICACIÓN Y PROGRAMACIÓN",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 5),
        Text(
          "Samsung Innovation Campus - Universidad Javeriana",
          style: TextStyle(color: softBlue, fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 10),
        Text(
          "(2020)",
          style: TextStyle(color: gray, fontSize: 13),
          textAlign: TextAlign.right,
        ),
        Text(
          "DIPLOMADO DESARROLLO DE SOFTWARE MISIÓN TIC 2022 - CICLO 3",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 5),
        Text(
          "Universidad Tecnológica de Pereira",
          style: TextStyle(color: softBlue, fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 10),
        Text(
          "(2020)",
          style: TextStyle(color: gray, fontSize: 13),
          textAlign: TextAlign.right,
        ),
        Text(
          "CURSO FUNDAMENTOS DE PROGRAMACIÓN MISIÓN TIC 2022 - CICLO 2 PROGRAMACIÓN BÁSICA JAVA",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 5),
        Text(
          "Universidad de Pamplona",
          style: TextStyle(color: softBlue, fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 10),
        Text(
          "(2020)",
          style: TextStyle(color: gray, fontSize: 13),
          textAlign: TextAlign.right,
        ),
        Text(
          "CURSO FUNDAMENTOS DE PROGRAMACIÓN MISIÓN TIC 2022 - CICLO  1 FUNDAMENTOS DE PROGRAMACIÓN PYTHON",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 5),
        Text(
          "Universidad de Pamplona",
          style: TextStyle(color: softBlue, fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 15),
        Text(
          "RECONOCIMIENTOS",
          style: TextStyle(fontWeight: FontWeight.bold, color: darkBlue),
          textAlign: TextAlign.justify,
        ),
        Text(
          "Mejor Bachiller I.E.D Villemar el Carmen Jornada Mañana",
          style: TextStyle(fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 10),
      ],
    ));
  }

  Container referenciasPersonales() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width,
            color: darkBlue,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "REFERENCIAS PROFESIONALES",
                style: TextStyle(color: white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )),
        SizedBox(height: 10),
        Text(
          "Angie Alexandra Quijano\nIngeniera Analista Ssr TI - Mercado Libre\n3502398368",
          textAlign: TextAlign.justify,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Carlos Gutiérrez Mejía\nSecure Power Technical Support Engineer - Schneider Electric\n3102866413",
          textAlign: TextAlign.justify,
        )
      ],
    ));
  }

  Container firma() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          "____________________________________\nKarol Gisselle Arciniegas Martinez\nC.C. 1 016 100 060 de Bogotá D.C",
          textAlign: TextAlign.right,
        )
      ],
    ));
  }

  void _launchLinkedIn() async =>
      await canLaunch(_url) ? await launch(_url) : throw 'Not found $_url';
}
