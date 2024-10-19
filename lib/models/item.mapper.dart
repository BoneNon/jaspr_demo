// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'item.dart';

class ItemMapper extends ClassMapperBase<Item> {
  ItemMapper._();

  static ItemMapper? _instance;
  static ItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Item';

  static int? _$id(Item v) => v.id;
  static const Field<Item, int> _f$id = Field('id', _$id);
  static String? _$by(Item v) => v.by;
  static const Field<Item, String> _f$by = Field('by', _$by);
  static int? _$time(Item v) => v.time;
  static const Field<Item, int> _f$time = Field('time', _$time);
  static String? _$text(Item v) => v.text;
  static const Field<Item, String> _f$text = Field('text', _$text);
  static String? _$url(Item v) => v.url;
  static const Field<Item, String> _f$url = Field('url', _$url);
  static String? _$title(Item v) => v.title;
  static const Field<Item, String> _f$title = Field('title', _$title);

  @override
  final MappableFields<Item> fields = const {
    #id: _f$id,
    #by: _f$by,
    #time: _f$time,
    #text: _f$text,
    #url: _f$url,
    #title: _f$title,
  };

  static Item _instantiate(DecodingData data) {
    return Item(
        id: data.dec(_f$id),
        by: data.dec(_f$by),
        time: data.dec(_f$time),
        text: data.dec(_f$text),
        url: data.dec(_f$url),
        title: data.dec(_f$title));
  }

  @override
  final Function instantiate = _instantiate;

  static Item fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Item>(map);
  }

  static Item fromJson(String json) {
    return ensureInitialized().decodeJson<Item>(json);
  }
}

mixin ItemMappable {
  String toJson() {
    return ItemMapper.ensureInitialized().encodeJson<Item>(this as Item);
  }

  Map<String, dynamic> toMap() {
    return ItemMapper.ensureInitialized().encodeMap<Item>(this as Item);
  }

  ItemCopyWith<Item, Item, Item> get copyWith =>
      _ItemCopyWithImpl(this as Item, $identity, $identity);
  @override
  String toString() {
    return ItemMapper.ensureInitialized().stringifyValue(this as Item);
  }

  @override
  bool operator ==(Object other) {
    return ItemMapper.ensureInitialized().equalsValue(this as Item, other);
  }

  @override
  int get hashCode {
    return ItemMapper.ensureInitialized().hashValue(this as Item);
  }
}

extension ItemValueCopy<$R, $Out> on ObjectCopyWith<$R, Item, $Out> {
  ItemCopyWith<$R, Item, $Out> get $asItem =>
      $base.as((v, t, t2) => _ItemCopyWithImpl(v, t, t2));
}

abstract class ItemCopyWith<$R, $In extends Item, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? by,
      int? time,
      String? text,
      String? url,
      String? title});
  ItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ItemCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Item, $Out>
    implements ItemCopyWith<$R, Item, $Out> {
  _ItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Item> $mapper = ItemMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? by = $none,
          Object? time = $none,
          Object? text = $none,
          Object? url = $none,
          Object? title = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (by != $none) #by: by,
        if (time != $none) #time: time,
        if (text != $none) #text: text,
        if (url != $none) #url: url,
        if (title != $none) #title: title
      }));
  @override
  Item $make(CopyWithData data) => Item(
      id: data.get(#id, or: $value.id),
      by: data.get(#by, or: $value.by),
      time: data.get(#time, or: $value.time),
      text: data.get(#text, or: $value.text),
      url: data.get(#url, or: $value.url),
      title: data.get(#title, or: $value.title));

  @override
  ItemCopyWith<$R2, Item, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ItemCopyWithImpl($value, $cast, t);
}
