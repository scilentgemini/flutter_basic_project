import 'package:material_ui/material_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bannerImg =
    'https://img.magnific.com/free-photo/misty-forest-reflection-calm-lake_84443-86474.jpg?semt=ais_hybrid&w=740&q=80';
const pfp =
    'https://scilentgemini.com/wp-content/uploads/2023/11/scilent-gemini-side.png';

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
              color: Colors.black.withValues(
                alpha: 0.8,
              ),
              colorBlendMode: BlendMode.darken,
            ),
            ProfileCard(),
            ProfileImage(),
          ],
        ),
      ),
    ),
  );
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 115,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          width: 150,
          height: 150,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.white.withValues(
                  alpha: 0.15,
                ),
                spreadRadius: 20,
              ),
              BoxShadow(
                color: Colors.white.withValues(
                  alpha: 0.25,
                ),
                spreadRadius: 10,
              ),
            ],
          ),
          child: Image.network(
            pfp,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

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
          borderRadius: BorderRadius.circular(
            12.0,
          ),
        ),
        color: Colors.white,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 80),
              Text(
                'ScilentGemini',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Prolly still learning',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(
                      horizontal: 60,
                      vertical: 20,
                    ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.facebook,
                    ),
                    FaIcon(
                      FontAwesomeIcons.instagram,
                    ),
                    FaIcon(FontAwesomeIcons.x),
                    FaIcon(
                      FontAwesomeIcons.dribbble,
                    ),
                    FaIcon(
                      FontAwesomeIcons.globe,
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '40k',
                        style: TextStyle(
                          fontSize: 34,
                        ),
                      ),
                      Text(
                        'FOLLOWING',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '67k',
                        style: TextStyle(
                          fontSize: 34,
                        ),
                      ),
                      Text(
                        'FOLLOWERS',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
