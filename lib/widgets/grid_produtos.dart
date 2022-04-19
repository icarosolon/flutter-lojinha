import 'package:flutter/material.dart';
import 'package:lojinha/modelos/movel.dart';
import 'package:lojinha/widgets/elemento_grid_produtos.dart';

class GridProdutos extends StatelessWidget {

  final moveis;

  GridProdutos({required this.moveis});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
      ),
      itemCount: moveis.length,
      itemBuilder: (BuildContext context, int indice){
        final movel = Movel.fromJson(moveis[indice]);
        return ElementoGridProdutos(movel: movel);
      },
    );
  }
}
