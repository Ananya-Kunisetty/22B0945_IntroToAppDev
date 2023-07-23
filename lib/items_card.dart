import 'package:flutter/material.dart';
import 'Items.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  final void Function()? delete;
  ItemCard({ required this.item, this.delete });

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[ Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.purple[50],
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(

            children: [
              Text(
                "${item.name}:",
                style: TextStyle(
                    color: Colors.deepPurpleAccent[600],
                    fontSize: 28.0
                ),
              ),
              Spacer(),
              Text(
                "${item.amount}",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                ),
              ),
              const SizedBox(height: 8.0),
              TextButton.icon(
                onPressed: delete,
                label: const Text(""),
                icon: const Icon(Icons.delete,
                color:Colors.black ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 30,)]
    );
  }
}