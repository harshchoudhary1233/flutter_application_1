import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home_detail_page.dart';

import 'package:flutter_application_1/Pages/homepage.dart';
import 'package:flutter_application_1/models/catalog.dart';

import 'catalog_item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return InkWell(
            onTap: () => Navigator.push(
              context, 
              MaterialPageRoute(
                builder: ((context) => HomeDetailPage(
                  catalog: catalog,
                  )
                  )
                  )
                  ),
            child: CatalogItem(
              catalog: catalog
              )
              );
        });
  }
}