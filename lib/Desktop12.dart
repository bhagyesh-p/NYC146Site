import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:oauth_test/Desktop11.dart';
//import './Component281.dart';
//import './Component271.dart';
import './Desktop17.dart';
import 'package:adobe_xd/page_link.dart';

class Desktop12 extends StatelessWidget {
  Desktop12({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcfcfc),
      body: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(153.0, 520.0, 192.0, 56.0),
            size: Size(1920.0, 1200.0),
            pinLeft: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'My Events',
              style: TextStyle(
                fontFamily: 'PingFang HK',
                fontSize: 40,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(860.0, 212.0, 200.0, 200.0),
            size: Size(1920.0, 1200.0),
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'FAVPNG_user-profile…' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(908.0, 439.0, 105.0, 28.0),
            size: Size(1920.0, 1200.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Username',
              style: TextStyle(
                fontFamily: 'PingFang HK',
                fontSize: 20,
                color: const Color(0xff000000),
                letterSpacing: 1.4000000000000001,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 0.0, 1920.0, 137.0),
            size: Size(1920.0, 1200.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            fixedHeight: true,
            child: Component281(),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(92.0, 625.0, 507.0, 489.0),
            size: Size(1920.0, 1200.0),
            pinLeft: true,
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Desktop17(),
                ),
              ],
              child: Component271(),
            ),
          ),
        ],
      ),
    );
  }
}
