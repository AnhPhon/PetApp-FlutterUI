import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petapp/Screens/Details_Screen.dart';
import 'package:petapp/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.linear,
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateZ(isDrawerOpen ? -0.1 : 0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(isDrawerOpen ? 29 : 0),
      ),
      duration: Duration(milliseconds: 300),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              scaleFactor = 1;
                              isDrawerOpen = false;
                            });
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                          ),
                        )
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              xOffset = 160;
                              yOffset = 150;
                              scaleFactor = 0.7;
                              isDrawerOpen = true;
                            });
                          },
                          icon: Icon(
                            Icons.menu,
                          ),
                        ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Location"),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: primaryGreen,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('VietNam')
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: primaryGreen,
                    radius: 23,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                          'https://scontent.fdad3-2.fna.fbcdn.net/v/t1.6435-9/178365630_907943059778049_5694045723792127237_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_ohc=JTfhdzL-8MgAX9Aku-4&_nc_oc=AQkf81lCG6N9wT5N3BcmKSV9kKfeoBe0hIBMGYlTlc7hFVKwQzkJS21NBBNvIHowfp2m2GnyCPgf8q3rAx04YCfc&tn=7KVYZCc4__P7GVxY&_nc_ht=scontent.fdad3-2.fna&oh=e4ec85e8e0b7cae2d92ee8f5b48e37ab&oe=616C637D'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(19),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 13),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                    ),
                    border: InputBorder.none,
                    hintStyle: GoogleFonts.ubuntu(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    hintText: 'Search pet to adopt',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(right: 10, left: 10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 2),
                                  color: Colors.grey,
                                  blurRadius: 2,
                                )
                              ],
                              borderRadius: BorderRadius.circular(13),
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              categories[index]['iconPath'],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10, left: 10),
                            width: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  categories[index]['name'],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            CategoryCard(
              image: 'assets/images/pet-cat1.png',
              name: 'Sola',
              subtitle: 'Abyssinian cat',
              year: '2 years old',
              distance: 'Distance: 3.6 km',
              press: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 300),
                        reverseTransitionDuration:
                            const Duration(milliseconds: 300),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            FadeTransition(
                              opacity: animation,
                              child: DetaislScreen(),
                            )));
              },
            ),
            CategoryCard(
              image: 'assets/images/pet-cat2.png',
              name: 'Orion',
              subtitle: 'Abyssinian cat',
              year: '1.5 years old',
              distance: 'Distance: 7.8 km',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.image,
    required this.name,
    required this.subtitle,
    required this.year,
    required this.distance,
    required this.press,
  }) : super(key: key);
  final String image, name, subtitle, year, distance;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 250,
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[300],
                        borderRadius: BorderRadius.circular(19),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 2),
                            color: Colors.grey,
                            blurRadius: 2,
                          )
                        ],
                      ),
                      margin: const EdgeInsets.only(top: 55, bottom: 5),
                    ),
                    Hero(
                      tag: 1,
                      child: Image.asset(
                        image,
                        height: 350,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 80,
                  bottom: 20,
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 2),
                      color: Colors.grey,
                      blurRadius: 2,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(19),
                    bottomRight: Radius.circular(19),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          Icon(
                            Icons.female_outlined,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        subtitle,
                        style: GoogleFonts.ubuntu(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        year,
                        style: GoogleFonts.ubuntu(
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: primaryGreen,
                          ),
                          Text(
                            distance,
                            style: GoogleFonts.ubuntu(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
