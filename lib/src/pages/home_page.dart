import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final TextStyle textStyle = new TextStyle( fontSize: 25 );
  final int conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de Clicks:', style: textStyle,),
            Text(conteo.toString(), style: textStyle,),
          ],
        )
      ),
      floatingActionButton:  FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {
          print('Estoy apretando el add button!')
        }
      ),
    );
  }
}