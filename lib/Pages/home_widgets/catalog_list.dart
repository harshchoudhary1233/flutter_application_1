import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home_widgets/catalog_item.dart';
import 'package:flutter_application_1/Pages/homepage.dart';
import 'package:flutter_application_1/models/catalog.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return CatalogItem(catalog: catalog);
        });
  }
}