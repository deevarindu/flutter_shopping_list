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
      body: Container(
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
                  const SizedBox(
                    height: 10,
                  ),
                  const Icon(Icons.attach_money_sharp),
                  const SizedBox(height: 8),
                  Text(itemArgs.price.toString()),
                ]),
                Column(children: [
                  FavoriteButton(),
                  const Text("Favorite Item"),
                ]),
              ],
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
