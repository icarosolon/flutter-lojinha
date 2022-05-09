import 'package:flutter/material.dart';

class TextoCardDetalhes extends StatelessWidget {

  final String texto;
  final TextStyle? estilo;

  TextoCardDetalhes({required this.texto, this.estilo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:16, right: 16, top:10),
      child: _estilizarText(texto)
    );
  }
  _estilizarText(texto){
    if(estilo != null){
      return Text(texto,style: estilo);
    }
    return Text(texto);
  }
}
