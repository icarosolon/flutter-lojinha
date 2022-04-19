import 'package:flutter/material.dart';
import 'package:lojinha/modelos/movel.dart';
import 'package:lojinha/widgets/degrade_grid_produtos.dart';
import 'package:lojinha/widgets/imagem_elemento_grid_produtos.dart';
import 'package:lojinha/widgets/titulo_elemento_produtos.dart';

class ElementoGridProdutos extends StatelessWidget {
  final Movel movel;
  ElementoGridProdutos({required this.movel});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ImagemElementoGridProdutos(
        imagem: this.movel.foto
        ),
        DegradeGridProdutos(),
        TituloElementoProdutos(titulo: this.movel.titulo),
      ],
    ) ;

  }
}
