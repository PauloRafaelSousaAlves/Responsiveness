import 'package:flutter/material.dart';

class WebAppbar extends StatelessWidget {
  const WebAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          const Text('LOGO DA EMPRESA'),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_rounded),
          ),
          const SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.lightBlue,
              primary: Colors.white,
            ),
            child: const Text('Cadastrar'),
          ),
          const SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.orange,
              primary: Colors.white,
            ),
            child: const Text('Entrar'),
          ),
        ],
      ),
    );
  }
}
