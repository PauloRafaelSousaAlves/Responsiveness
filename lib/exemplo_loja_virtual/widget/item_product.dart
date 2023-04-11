import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  final String descricao;
  final String preco;
  final IconData icon;

  const ItemProduct(
      {super.key,
      required this.descricao,
      required this.preco,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
        color: Colors.black12,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Icon(icon),
          ),
          Expanded(
            flex: 1,
            child: Text(descricao),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'R\$ $preco',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
