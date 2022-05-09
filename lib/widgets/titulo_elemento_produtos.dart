import 'package:flutter/material.dart';

class TituloElementoProdutos extends StatelessWidget {

  final String titulo;

  TituloElementoProdutos({required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
    child: Text(this.titulo, style: Theme.of(context).textTheme.headline2,)
    );
  }
}
