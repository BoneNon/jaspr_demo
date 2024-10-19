import 'dart:convert';

import 'package:jaspr/server.dart';
import 'package:jaspr_demo/components/news_list.dart';
import 'package:jaspr_demo/models/item.dart';
import 'package:http/http.dart' as http;

//import '../components/counter.dart';

@client
class Home extends AsyncStatelessComponent {
  const Home({super.key});

  Future<(List<Item>, List<int>)> loadItems() async {
    final response = await http.get(
        Uri.parse('https://hacker-news.firebaseio.com/v0/topstories.json'));
    final List<int> ids = jsonDecode(response.body).cast<int>();
    int counter = 0;
    final futures = <Future<http.Response>>[];
    while (counter < 10) {
      futures.add(
        http.get(
          Uri.parse(
              'https://hacker-news.firebaseio.com/v0/item/${ids[counter]}.json'),
        ),
      );
      counter++;
    }

    final Items = <Item>[];
    final responses = await Future.wait(futures);
    for (final response in responses) {
      final data = jsonDecode(response.body);
      Items.add(ItemMapper.fromMap(data));
    }
    return (Items, ids.sublist(10));
  }

  @override
  Stream<Component> build(BuildContext context) async* {
    final (items, extraIds) = await loadItems();
    yield NewsList(items, extraIds);
  }
}
