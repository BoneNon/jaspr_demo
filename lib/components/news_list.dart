import 'package:jaspr/server.dart';

import '../models/item.dart';

@client
class NewsList extends StatelessComponent {
  const NewsList(this.items, this.extraIds);

  final List<Item> items;
  final List<dynamic> extraIds;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    final elements = <Component>[];

    for (final item in items) {
      elements.add(
        li(classes: 'news-item', [
          section([
            p([text(item.title ?? '<missing title>')]),
            p([text('by ${item.by ?? "anonymous"}')])
          ])
        ]),
      );
    }
    yield ul(classes: 'news-list', elements);

    if (kIsWeb) {
      print(extraIds);
    }
  }

  @css
  static final List<StyleRule> styles = [
    css('.news-list').list(style: ListStyle.none),
    css('.news-item')
        .box(
          margin: EdgeInsets.all(10.px),
          padding: EdgeInsets.all(10.px),
        )
        .background(color: Colors.lightGrey),
  ];
}
