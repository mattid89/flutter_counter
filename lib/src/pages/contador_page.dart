import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
  
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _textStyle = new TextStyle( 
    fontSize: 25,
    fontWeight: FontWeight.w700
  );
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de Clicks:', style: _textStyle,),
            Text('$_conteo', style: _textStyle,),
          ],
        )
      ),
      floatingActionButton:  _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(onPressed: _zero, child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _remove, child: Icon(Icons.remove)),
        SizedBox(width: 5.0),
        FloatingActionButton(onPressed: _add, child: Icon(Icons.add)),
      ],
    );
  }

  void _add() => setState(() => _conteo++); 
  void _remove() => setState(() => _conteo--); 
  void _zero() => setState(() => _conteo = 0);
  
}