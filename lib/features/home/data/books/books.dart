import 'item.dart';

class Books {
  String? kind;
  int? totalItems;
  List<Item>? items;

  Books({this.kind, this.totalItems, this.items});

  factory Books.fromJson(Map<String, dynamic> json) => Books(
        kind: json['kind'] as String?,
        totalItems: json['totalItems'] as int?,
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'totalItems': totalItems,
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
