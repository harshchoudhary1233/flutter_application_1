import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatefulWidget {
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);
  final Item catalog;

  @override
  State<HomeDetailPage> createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.m0,
          children: [
            "\$${widget.catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(StadiumBorder())),
              child: "Add to cart".text.make(),
            )
          ],
        ).p32(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: false,
          child: Column(children: [
            Hero(
                    tag: Key(widget.catalog.id),
                    child: Image.network(widget.catalog.image))
                .p16(),
            Expanded(
              child: VxArc(
                edge: VxEdge.TOP,
                arcType: VxArcType.CONVEY,
                height: 30,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(children: [
                    widget.catalog.name.text.xl4.bold.make(),
                    widget.catalog.desc.text
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
      ),
    );
  }
}
