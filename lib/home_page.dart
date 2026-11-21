import 'package:material_ui/material_ui.dart';

const url = 'https://thumb.wikimedia.org/wikipedia/commons/thumb/f/fe/Swayambhunath_2018.jpg/1280px-Swayambhunath_2018.jpg?utm_source=en.wikipedia.org&utm_campaign=index&utm_content=thumbnail';
const url1 = 'https://www.pelago.com/img/products/NP-Nepal/private-tour-of-godawari-botanical-garden-including-lunch/ba044d57-4d09-42d0-8e64-7e61998165d6_private-tour-of-godawari-botanical-garden-including-lunch-medium.jpg';
const url2 = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuyMZQxKqOX09jxtoqRVprF8U9TwL2NAntY0UoO8OBYbLqlmEzdc6G5r4&s=10';
const url3 =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfpZqHDmxxMeXmjGPrk5e5BHhIPqAbGn7dPD-wC5jB86EznQ4l_vYOoSs&s=10';
const sundarban =
'''The Sundarbans mangrove forest, one of the largest such forests in the world (140,000 ha), lies on the delta of the Ganges, Brahmaputra and Meghna rivers on the Bay of Bengal. It is adjacent to the border of India’s Sundarbans World Heritage site inscribed in 1987. The site is intersected by a complex network of tidal waterways, mudflats and small islands of salt-tolerant mangrove forests, and presents an excellent example of ongoing ecological processes. The area is known for its wide range of fauna, including 260 bird species, the Bengal tiger and other threatened species such as the estuarine crocodile and the Indian python.''';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page'),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _imageSection(),
            _headerSection(),
            _navigationSection(),
            _bodySection(),
          ],
        ),
      ),
    );
  }

  Widget _bodySection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(sundarban),
    );
  }

  Widget _navigationSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: [
              Icon(
                Icons.call,
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                ),
                child: Text(
                  'CALL',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: [
              Icon(
                Icons.near_me,
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                ),
                child: Text(
                  'ROUTE',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: [
              Icon(
                Icons.share,
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                ),
                child: Text(
                  'SHARE',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _headerSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Text(
                'The Sundarbans',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Khulna Division, Bangladesh',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(Icons.star, color: Colors.amber),
          Text('9.5'),
        ],
      ),
    );
  }

  Widget _imageSection() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.network(
          url3,
          width: double.infinity,
          height: 350,
          fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: Center(
            child: Text(
              'Sundarbans',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: -35,
          left: 0,
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                size: 50,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
