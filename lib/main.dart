import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Binary Calculator',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: GoogleFonts.robotoMonoTextTheme(Theme.of(context).textTheme,),
      ),
      home: MyHomePage(title: 'Binary Calculator'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final _num1Controller = TextEditingController();
  final _num2Controller = TextEditingController();
  int _result = 00000000;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Text(widget.title,
          style: GoogleFonts.robotoMono(),)
        ),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.only(top:40.0,left: 20.0,right: 20.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 150.0,
                      height: 150.0,
                      child: Icon(FontAwesomeIcons.calculator, size: 60.0, color: Colors.green,),
                    ),
                    Text('Calcule números binários de 0 a 255'),
                    Divider(),
                    TextFormField(
                      controller: _num1Controller,
                      maxLength: 8,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Insira um número binário',
                        labelStyle: TextStyle(
                          fontSize: 16.0
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent),
                          borderRadius: BorderRadius.all(Radius.circular(2.0))
                        )
                      ),
                      validator: (value){
                        if(value.contains(RegExp(r'^[0-1]+$')))
                          return null;
                        else
                          return 'Número inválido';
                      },
                    ),
                    SizedBox(height: 15.0,),
                    TextFormField(
                      controller: _num2Controller,
                      maxLength: 8,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Insira um número binário',
                        labelStyle: TextStyle(
                          fontSize: 16.0
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent),
                          borderRadius: BorderRadius.all(Radius.circular(2.0))
                        )
                      ),
                      validator: (value){
                        if(value.contains(RegExp(r'^[0-1]+$')))
                          return null;
                        else
                          return 'Número inválido';
                      },
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      children: <Widget>[
                        IconButton(icon: Icon(FontAwesomeIcons.plus), onPressed: (){
                          if(_formKey.currentState.validate())
                            setState(() {
                              _result = 1234;
                            });
                        },
                        padding: EdgeInsets.fromLTRB(20.0, 0.0, 25.0, 0.0),),
                        IconButton(icon: Icon(FontAwesomeIcons.minus), onPressed: null,
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0)),
                        IconButton(icon: Icon(FontAwesomeIcons.times), onPressed: null,
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0)),
                        IconButton(icon: Icon(FontAwesomeIcons.divide), onPressed: null,
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0)),
                        IconButton(icon: Icon(FontAwesomeIcons.percent), onPressed: null,
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 20.0, 0.0)),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Center(
                      child: Text(
                        _result.toString()
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
