import 'package:flutter/material.dart';
import 'package:adobe_xd/adobe_xd.dart';
import 'package:oauth_test/Desktop9.dart';
import './Component291.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Desktop10 extends StatelessWidget {
  Desktop10({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff82f5fa),
      body: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(801.0, 319.0, 242.0, 162.0),
            size: Size(1920.0, 1200.0),
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'PinClipart.com_clou…' (shape)
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
            bounds: Rect.fromLTWH(720.0, 254.0, 480.0, 414.0),
            size: Size(1920.0, 1200.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 480.0, 56.0),
                  size: Size(480.0, 414.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff000000)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 118.0, 480.0, 56.0),
                  size: Size(480.0, 414.0),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff000000)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(172.0, 218.0, 136.0, 56.0),
                  size: Size(480.0, 414.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff000000)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(52.0, 5.0, 86.0, 42.0),
                  size: Size(480.0, 414.0),
                  pinLeft: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontFamily: 'PingFang HK',
                      fontSize: 30,
                      color: const Color(0xff000000),
                      letterSpacing: 2.1,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(204.0, 228.0, 72.0, 36.0),
                  size: Size(480.0, 414.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'PingFang HK',
                      fontSize: 25,
                      color: const Color(0xff000000),
                      letterSpacing: 1.7500000000000002,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(52.0, 122.0, 152.0, 42.0),
                  size: Size(480.0, 414.0),
                  pinLeft: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontFamily: 'PingFang HK',
                      fontSize: 30,
                      color: const Color(0xff000000),
                      letterSpacing: 2.1,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(47.0, 386.0, 386.0, 28.0),
                  size: Size(480.0, 414.0),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'PingFang HK',
                        fontSize: 20,
                        color: const Color(0xff000000),
                        letterSpacing: 1.4000000000000001,
                      ),
                      children: [
                        TextSpan(
                          text: 'Don’t have an account yet? ',
                        ),
                        TextSpan(
                          text: 'Sign up',
                          style: TextStyle(
                            color: const Color(0xff0000fc),
                          ),
                        ),
                        TextSpan(
                          text: '.',
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(78.0, 306.0, 324.0, 56.0),
                  size: Size(480.0, 414.0),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff000000)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(85.0, 316.0, 310.0, 36.0),
                  size: Size(480.0, 414.0),
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'Sign in through Google',
                    style: TextStyle(
                      fontFamily: 'PingFang HK',
                      fontSize: 25,
                      color: const Color(0xff000000),
                      letterSpacing: 1.7500000000000002,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(47.5, 0.5, 1.0, 55.0),
                  size: Size(480.0, 414.0),
                  pinLeft: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_e6r461,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(47.5, 118.5, 1.0, 55.0),
                  size: Size(480.0, 414.0),
                  pinLeft: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_aautcp,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(-16.0, 560.0, 1953.0, 698.0),
            size: Size(1920.0, 1200.0),
            pinLeft: true,
            pinRight: true,
            pinBottom: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'PngItem_5099698 (1)' (shape)
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
            bounds: Rect.fromLTWH(0.0, 0.0, 1920.0, 137.0),
            size: Size(1920.0, 1200.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            fixedHeight: true,
            child: Component291(),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(101.0, 204.0, 242.0, 162.0),
            size: Size(1920.0, 1200.0),
            pinLeft: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'PinClipart.com_clou…' (shape)
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
            bounds: Rect.fromLTWH(1552.0, 277.0, 242.0, 162.0),
            size: Size(1920.0, 1200.0),
            pinRight: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'PinClipart.com_clou…' (shape)
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
            bounds: Rect.fromLTWH(855.0, 165.0, 210.0, 56.0),
            size: Size(1920.0, 1200.0),
            pinTop: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Login Page',
              style: TextStyle(
                fontFamily: 'PingFang HK',
                fontSize: 40,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_e6r461 =
    '<svg viewBox="831.5 254.5 1.0 55.0" ><path transform="translate(831.5, 254.5)" d="M 0 0 L 0 55" fill="none" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_aautcp =
    '<svg viewBox="831.5 372.5 1.0 55.0" ><path transform="translate(831.5, 372.5)" d="M 0 0 L 0 55" fill="none" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
