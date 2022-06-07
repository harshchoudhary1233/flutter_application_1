// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

// ignore_for_file: non_constant_identifier_names

class CatalogModel {

  static final catalogModel = CatalogModel._internal();
  CatalogModel._internal();
  factory CatalogModel() => catalogModel;
  static List<Item> items = [
    Item(
        id: "p1",
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12 generation",
        price: 93245,
        color: "33505a",
        image:
            "data:image/jpeg;base64,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")
  ];
  Item getById(String id) =>
      items.firstWhere((element) => element.id == id, orElse: null);
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  

  Item copyWith({
    String? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as String,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as num,
      color: map['color'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Item &&
      other.id == id &&
      other.name == name &&
      other.desc == desc &&
      other.price == price &&
      other.color == color &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      desc.hashCode ^
      price.hashCode ^
      color.hashCode ^
      image.hashCode;
  }
}
//above wala is for decode if you want to encode(string se map bnana) then go to 04:29:00 in codepur vdo


