import 'package:flutter/material.dart';

import '../models/item.dart';
import '../widgets/widgets.dart';

class ItemPage extends StatelessWidget {
  ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                itemArgs.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16),
              Image.asset(itemArgs.img),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Icon(Icons.attach_money_sharp),
                    const SizedBox(height: 8),
                    Text(itemArgs.price.toString()),
                  ]),
                  Column(children: [
                    FavoriteButton(),
                    Text("Favorite Item"),
                  ]),
                ],
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
