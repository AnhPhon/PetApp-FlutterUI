import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petapp/constants.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,
      child: Padding(
        padding: const EdgeInsets.only(top: 80, bottom: 10, left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 26,
                    backgroundImage: NetworkImage(
                        'https://scontent.fdad3-2.fna.fbcdn.net/v/t1.6435-9/178365630_907943059778049_5694045723792127237_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_ohc=JTfhdzL-8MgAX9Aku-4&_nc_oc=AQkf81lCG6N9wT5N3BcmKSV9kKfeoBe0hIBMGYlTlc7hFVKwQzkJS21NBBNvIHowfp2m2GnyCPgf8q3rAx04YCfc&tn=7KVYZCc4__P7GVxY&_nc_ht=scontent.fdad3-2.fna&oh=e4ec85e8e0b7cae2d92ee8f5b48e37ab&oe=616C637D'),
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
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.hdr_strong_outlined,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Active status',
                          style: GoogleFonts.ubuntu(
                            color: Colors.green,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: drawerItems
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Icon(
                            e['icon'],
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(e['title'],
                              style: GoogleFonts.ubuntu(
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Settings',
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 20,
                  width: 2,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.logout,
                      color: Colors.white,
                    )),
                Text(
                  'Log out',
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
