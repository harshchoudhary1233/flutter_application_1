import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';

import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(tag: Key(catalog.id), child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.xl.bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: Vx.m0,
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                _AddToCart(catalog: catalog)
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).rounded.square(200).color(context.cardColor).make().py16();
  }
}

class _AddToCart extends StatefulWidget {
  Item catalog;
  _AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<_AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<_AddToCart> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        isAdded = !isAdded;
        final _catalog = CatalogModel();
        final _cart = CartModel();
        _cart.catalog = _catalog;
        _cart.add(widget.catalog);

        setState(() {});
      },
      style: ButtonStyle(shape: MaterialStateProperty.all(StadiumBorder())),
      child: isAdded
          ? Icon(Icons.done)
          : Icon(Icons.shopping_cart_checkout_rounded),
    );
  }
}
