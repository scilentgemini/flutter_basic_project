import 'package:material_ui/material_ui.dart';

class CounterApp extends StatefulWidget {
  const new({super.key});

  @override
  State<CounterApp> createState() =>
      _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Text(
              'You have pushed the button this many times',
            ),
            Text(
              '$count',
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
