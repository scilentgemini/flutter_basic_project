import 'package:material_ui/material_ui.dart';

const bannerImg =
    'https://img.magnific.com/free-photo/misty-forest-reflection-calm-lake_84443-86474.jpg?semt=ais_hybrid&w=740&q=80';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFE8EFF5),
        body: Stack(
          children: [
            Image.network(
              bannerImg,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              color: Colors.black.withValues(alpha: 0.8),
              colorBlendMode: BlendMode.darken,
            ),
            ProfileCard(),
            Positioned(
              top: 125,
                left: 0,
                right: 0,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withValues(alpha: 0.15),
                        spreadRadius: 20,
                      ),
                      BoxShadow(
                        color: Colors.white.withValues(alpha: 0.25),
                        spreadRadius: 10,
                      ),
                    ]
                  ),
                )
            )
          ],
        ),
      ),
    ),
  );
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 190,
        left: 24,
        right: 24,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(12.0),
        ),
        color: Colors.white,
        child: SizedBox(
            height: 700,
          width: double.infinity,
        ),
      ),
    );
  }
}
