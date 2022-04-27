import 'package:flutter/material.dart';

class TextoCardDetalhes extends StatelessWidget {

  final String texto;

  TextoCardDetalhes({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:16, right: 16, top:10),
      child: Text(
        this.texto
      ),
    );
  }
}
