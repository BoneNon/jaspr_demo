import 'package:dart_mappable/dart_mappable.dart';
import 'package:jaspr/jaspr.dart';

part 'item.mapper.dart';

@MappableClass()
class Item with ItemMappable {
  Item({
    required this.id,
    required this.by,
    required this.time,
    required this.text,
    required this.url,
    required this.title,
  });

  final int? id;
  final String? by;
  final int? time;
  final String? text;
  final String? url;
  final String? title;

  @decoder
  static Item decode(Map<String, dynamic> data) => ItemMapper.fromMap(data);

  @encoder
  Map<String, dynamic> encode() => toMap();
}
