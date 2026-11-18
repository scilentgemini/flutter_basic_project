import 'package:material_ui/material_ui.dart';

const url =
    'https://d2s3cbzybmajg3.cloudfront.net/public/media/main/Swayambhu_ss_lt_(7)-1624857899.jpg';
const description =
    '''According to Vajrayāna Buddhism, Swayambhu represents the void from which the universe is created. The hemispherical dome is erected right from the passage of circumambulation and is surrounded by five meditating Buddhas. The stupa consists of a dome at the base, on top of which is a cube structure, painted with the Eyes of Buddha looking in all four directions. The gold plated bronze rings above the cubical structure are called Trayodashabhuvana (thirteen steps) representing the thirteen stages before reaching Nirvana.''';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Image.network(
              url,
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 30,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Swayambhunath',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Kathmandu, Nepal',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.star,
                    color: Colors.deepPurple,
                    size: 40,
                  ),
                  Text(
                    '67',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            //Icons
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 70,
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.purple,
                        size: 50,
                      ),
                      Text('CALL'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.navigation,
                        color: Colors.purple,
                        size: 50,
                      ),
                      Text('ROUTE'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.purple,
                        size: 50,
                      ),
                      Text('SHARE'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 30,
              ),
              child: Column(
                children: [
                  Text(
                    description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
