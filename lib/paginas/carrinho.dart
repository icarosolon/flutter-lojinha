import 'package:flutter/material.dart';
import 'package:lojinha/widgets/appbar_customizada.dart';

class Carrinho extends StatelessWidget {
  const Carrinho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustomizada(titulo:'Carrinho', ehCarrinho: true),
      body: Text('Estamos no Carrinho'),
    );
  }
}
