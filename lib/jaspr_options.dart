// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:jaspr_demo/components/news_list.dart' as prefix0;
import 'package:jaspr_demo/pages/home.dart' as prefix1;
import 'package:jaspr_demo/pages/item.dart' as prefix2;
import 'package:jaspr_demo/app.dart' as prefix3;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
final defaultJasprOptions = JasprOptions(
  clients: {
    prefix0.NewsList: ClientTarget<prefix0.NewsList>('components/news_list', params: _prefix0NewsList),
    prefix1.Home: ClientTarget<prefix1.Home>('pages/home'),
    prefix2.Item: ClientTarget<prefix2.Item>('pages/item'),
  },
  styles: () => [
    ...prefix0.NewsList.styles,
    ...prefix2.Item.styles,
    ...prefix3.App.styles,
  ],
);

Map<String, dynamic> _prefix0NewsList(prefix0.NewsList c) =>
    {'items': c.items.map((i) => i.encode()).toList(), 'extraIds': c.extraIds};
