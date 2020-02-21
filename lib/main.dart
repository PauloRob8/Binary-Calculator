import 'package:binary_operations/models/calculator.dart';
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
        fontFamily: 'RobotoMono',
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
  String _result = '';
  String _binaryResult = '';
  Calculator calculator = Calculator();
  
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
      body: ListView(
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
                  Text('Calcule números binários de 0 a 255',style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
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
                      if(value.contains(RegExp(r'^[0-1]+$'))){
                        if(value.length < 8){
                          return 'Complete os 8bits';
                        }
                        return null;
                      }
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
                      if(value.contains(RegExp(r'^[0-1]+$'))){
                        if(value.length < 8){
                          return 'Complete os 8bits';
                        }
                        return null;
                      }
                      else
                        return 'Número inválido';
                    },
                  ),
                  Divider(),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                      IconButton(icon: Icon(FontAwesomeIcons.plus), onPressed: (){
                        if(_formKey.currentState.validate()){
                          setState(() {
                            _result = calculator.sum(this._num1Controller.text, this._num2Controller.text).toString();
                            _binaryResult = calculator.deconvert(int.parse(_result));
                          });
                        }
                      },
                      padding: EdgeInsets.fromLTRB(20.0, 0.0, 25.0, 0.0),),
                      IconButton(icon: Icon(FontAwesomeIcons.minus), onPressed: (){
                        if(_formKey.currentState.validate()){
                          setState(() {
                            _result = calculator.subtract(this._num1Controller.text, this._num2Controller.text).toString();
                            _binaryResult = calculator.deconvert(int.parse(_result));
                          });
                        }
                      },
                      padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0)),
                      IconButton(icon: Icon(FontAwesomeIcons.times), onPressed: (){
                        if(_formKey.currentState.validate()){
                          setState(() {
                            _result = calculator.multply(this._num1Controller.text, this._num2Controller.text).toString();
                            _binaryResult = calculator.deconvert(int.parse(_result));
                          });
                        }
                      },
                      padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0)),
                      IconButton(icon: Icon(FontAwesomeIcons.divide), onPressed: (){
                          if(_formKey.currentState.validate()){
                          setState(() {
                            _result = calculator.divide(this._num1Controller.text, this._num2Controller.text).toString();
                            _binaryResult = calculator.deconvert(int.parse(_result));
                          });
                        }
                      },
                      padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0)),
                      IconButton(icon: Icon(FontAwesomeIcons.percent), onPressed: (){
                          if(_formKey.currentState.validate()){
                          setState(() {
                            _result = calculator.remainder(this._num1Controller.text, this._num2Controller.text).toString();
                            _binaryResult = calculator.deconvert(int.parse(_result));
                          });
                        }
                      },
                      padding: EdgeInsets.fromLTRB(25.0, 0.0, 20.0, 0.0)),
                    ],
                  ),
              ),
                  Divider(),
                  ListTile(
                    leading: Text('Resultado Binário: ',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                    trailing: Text(_binaryResult),
                  ),
                  SizedBox(height: 10.0,),
                  ListTile(
                    leading: Text('Resultado Decimal: ',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                    trailing: Text(_result),
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
