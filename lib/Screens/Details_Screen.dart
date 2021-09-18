import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petapp/constants.dart';

class DetaislScreen extends StatefulWidget {
  const DetaislScreen({Key? key}) : super(key: key);

  @override
  _DetaislScreenState createState() => _DetaislScreenState();
}

class _DetaislScreenState extends State<DetaislScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            color: Colors.blueGrey[300],
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.share,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Hero(
                      tag: 1,
                      child: Image.asset('assets/images/pet-cat1.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 290,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 5,
                    color: primaryGreen.withAlpha(90),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sola',
                          style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Abyssinian cat',
                          style: GoogleFonts.ubuntu(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '2 years old',
                          style: GoogleFonts.ubuntu(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                '254 Nguyen Van Linh Street, Hai Chau District, Da Nang City',
                                style: GoogleFonts.ubuntu(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(29),
                  topRight: Radius.circular(29),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: primaryGreen,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 220,
                        decoration: BoxDecoration(
                          color: primaryGreen,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text('Adoption',
                              style: GoogleFonts.ubuntu(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 100,
            child: Container(
              width: double.infinity,
              height: 210,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 23,
                            backgroundColor: primaryGreen,
                            child: CircleAvatar(
                              radius: 22,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fsgn4-1.fna.fbcdn.net/v/t1.6435-9/234829566_972059356699752_3865097996004162449_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=GJV_Qvyo-0EAX8BXTnX&_nc_ht=scontent.fsgn4-1.fna&oh=9f263ffbc85f5e8a7087c4c83e355985&oe=616B5F63'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ngo Tran Anh Phon',
                                style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Da Nang',
                                style: GoogleFonts.ubuntu(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Text(
                        'September 18th, 2021',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Column(
                    children: [
                      Text(
                        'Cats, more precisely domestic cats to distinguish them from other species of the feline family, are small, carnivorous mammals that live with humans, bred to hunt pests or as pets. with domestic dogs. Domestic cats have lived close to humans for at least 9,500 years, and today they are the most popular pet in the world. There are many different breeds of cats, some hairless or tailless, and they come in a variety of coat colors. Cats are skilled predators and are known for their ability to hunt thousands of creatures for food, such as mice. They are also intelligent creatures, and can be taught or taught themselves to use simple tools like opening a doorknob or flushing the toilet. Cats communicate by meowing, purring, hissing, growling, and body language. Cats in packs use both sound and body language to communicate with each other. Like some other domesticated animals (like horses), cats can still do well in wild habitats like feral cats. Contrary to popular belief that cats are solitary animals, they often form small flocks in the wild.',
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
