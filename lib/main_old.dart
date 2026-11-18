import 'package:material_ui/material_ui.dart';

const url1 =
    'https://media.wired.com/photos/63b8d0a771c6b526845f15a6/master/pass/CES-2023-PEUGEOT_INCEPTION_CONCEPT_2301CN202.jpg';
const url =
    'https://www.mgmotors.com.np/admin/uploads/products/Untitled%20(19).webp';
const description = '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam lacinia nec leo eu pretium. Mauris pellentesque viverra laoreet. Suspendisse tincidunt mauris neque, sit amet porta tortor consectetur nec. Nulla quis neque nec orci maximus rutrum vitae ac odio. Proin fermentum nisl ut orci tempor consectetur. Aliquam a tempor est. Morbi volutpat libero id massa iaculis dictum. Suspendisse sem odio, dignissim quis convallis non, mattis eu lectus. Sed ullamcorper dapibus posuere. Integer scelerisque massa sed quam congue, in dapibus lectus interdum. Etiam sit amet turpis et sapien varius egestas.

Donec auctor varius quam, id pretium felis facilisis at. Quisque placerat blandit augue, eget sollicitudin massa. In hac habitasse platea dictumst. Nam congue tempus luctus. In id varius massa. Sed ultricies urna et felis viverra pellentesque ut ac quam. Vestibulum pharetra malesuada enim vitae ultricies. Donec sem ligula, varius ut eleifend vel, rutrum in urna. Ut pellentesque pellentesque faucibus. Mauris blandit odio et eleifend efficitur. In risus sem, semper in venenatis id, laoreet sed est.''';
const description2 =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam lacinia nec leo eu pretium. Mauris pellentesque viverra laoreet. Suspendisse tincidunt mauris neque, sit amet porta tortor consectetur nec. Nulla quis neque nec orci maximus rutrum vitae ac odio. Proin fermentum nisl ut orci tempor consectetur.';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Home Page'),
        ),
        body: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              url1,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.share,
                  color: Colors.amber,
                  size: 50,
                ),
                Icon(
                  Icons.navigation,
                  color: Colors.amber,
                  size: 20,
                ),
                Spacer(),
                Icon(
                  Icons.favorite,
                  color: Colors.amber,
                  size: 30,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 8,
              ),
              child: Text(
                'My Car',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Text(
              description2,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    ),
  );
}
