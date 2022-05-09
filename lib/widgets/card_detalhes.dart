import 'package:flutter/material.dart';
import 'package:lojinha/modelos/movel.dart';
import 'package:lojinha/widgets/texto_card_detalhes.dart';
import 'package:intl/intl.dart';

class CardDetalhes extends StatelessWidget {

  final Movel movel;
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  CardDetalhes({required this.movel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextoCardDetalhes(texto: movel.titulo, estilo: Theme.of(context).textTheme.headline1,),
          TextoCardDetalhes(texto: movel.descricao.toString()),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(formatacaoReais.format(movel.preco), style: Theme.of(context).textTheme.headline1,),
              FlatButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: (){},
                  child: Text('Comprar', style: TextStyle(color: Colors.white),)
              ),
            ],
            ),
          ),
        ],
      ),
    );
  }
}
