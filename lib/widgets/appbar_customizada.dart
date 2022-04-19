import 'package:flutter/material.dart';
import 'package:lojinha/widgets/botao_carrinho.dart';

class AppBarCustomizada extends StatelessWidget with PreferredSizeWidget {

  final String titulo;
  final bool ehCarrinho;

  AppBarCustomizada({required this.titulo, required this.ehCarrinho});//constructor

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black
      ),
      title: Text(
        this.titulo,
        style: TextStyle(
          color: Colors.black
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: [
        _mudarPaginaCarrinho(this.ehCarrinho)
      ],
    );
  }

  _mudarPaginaCarrinho(bool ehPaginaCarrinho){
    if(ehPaginaCarrinho)
      return Container();

    return BotaoCarrinho();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
