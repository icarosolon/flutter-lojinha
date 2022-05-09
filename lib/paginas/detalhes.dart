import 'package:flutter/material.dart';
import 'package:lojinha/modelos/movel.dart';
import 'package:lojinha/widgets/appbar_customizada.dart';
import 'package:lojinha/widgets/card_detalhes.dart';

class Detalhes extends StatelessWidget {

  final Movel movel;

  Detalhes({required this.movel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('utilidades/assets/imagens/${movel.foto}'),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCustomizada(titulo: 'Detalhes', ehCarrinho: false),
        body: OutlinedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/carrinho');
          },
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(16),
              height: 220,
                child: CardDetalhes(movel: movel,)
            ),
          ),
        )
      ),
    );
  }
}
