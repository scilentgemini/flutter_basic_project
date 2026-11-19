import 'package:material_ui/material_ui.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(
      1000,
      (index) => 'Item ${index + 1}',
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('List View Example'),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => ListTile(
          tileColor: index.isEven ? Colors.grey : Colors.grey[300],
          title: Text(items[index]),
          subtitle: Text(
            'This is a subtitle ${index + 1}',
          ),
        ),
      ),
    );
  }
}
