import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/home_widgets/addToCart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);
  final Item catalog;

  
 
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.cardColor,
      bottomNavigationBar: Container(
        color: context.canvasColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.m0,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            AddToCart(catalog:catalog),
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
                  tag: Key(catalog.id),
                  child: Image.network(catalog.image))
              .p16(),
          Expanded(
            child: VxArc(
              edge: VxEdge.TOP,
              arcType: VxArcType.CONVEY,
              height: 30,
              child: Container(
                color: context.canvasColor,
                width: context.screenWidth,
                child: Column(children: [
                  catalog.name.text.xl4.bold.make(),
                  catalog.desc.text
                      .textStyle(context.captionStyle)
                      .xl
                      .make(),
                  10.heightBox,
                ]).py64(),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
