import 'package:basic_widgets/counter_app.dart';
import 'package:basic_widgets/grid_view_example.dart';
import 'package:basic_widgets/home_page.dart';
import 'package:basic_widgets/list_view_example.dart';
import 'package:material_ui/material_ui.dart';

class MenuPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        HomePage(),
                  ),
                );
              },
              child: Text('Home'),
            ),
            //ListView Page
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ListViewExample(),
                  ),
                );
              },
              child: Text('ListView'),
            ),
            //GridView Page
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        GridViewExample (),
                  ),
                );
              },
              child: Text('GirdView'),
            ),
            //Counter App
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CounterApp(),
                  ),
                );
              },
              child: Text('Counter App'),
            ),
          ],
        ),
      ),
    );
  }
}
