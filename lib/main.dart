import 'package:basic_widgets/grid_view_example.dart';
import 'package:basic_widgets/list_view_example.dart';
import 'package:basic_widgets/menu_page.dart';
import 'package:material_ui/material_ui.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuPage(),
    );
  }
}
