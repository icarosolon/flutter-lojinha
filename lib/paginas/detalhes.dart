import 'package:flutter/material.dart';
import 'package:lojinha/widgets/appbar_customizada.dart';

class Detalhes extends StatelessWidget {
  const Detalhes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomizada(titulo: 'Detalhes', ehCarrinho: false),
      body: FlatButton(
        onPressed: (){
          Navigator.pushNamed(context, '/carrinho');
        },
        child: Text('Vá para o carrinho!'),
      )
    );
  }
}
