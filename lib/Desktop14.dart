import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Desktop14 extends StatelessWidget {
  Desktop14({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcfcfc),
      body: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(145.0, 207.0, 580.0, 119.0),
            size: Size(1920.0, 1200.0),
            pinLeft: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Have a question?',
              style: TextStyle(
                fontFamily: 'PingFang HK',
                fontSize: 70,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(145.0, 301.0, 365.0, 72.0),
            size: Size(1920.0, 1200.0),
            pinLeft: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Email us at: nyc146@gmail.com\n',
              style: TextStyle(
                fontFamily: 'PingFang HK',
                fontSize: 25,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(145.0, 440.0, 635.0, 595.0),
            size: Size(1920.0, 1200.0),
            pinLeft: true,
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 635.0, 595.0),
                  size: Size(635.0, 595.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(54.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff000000)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(72.0, 59.0, 491.0, 59.0),
                  size: Size(635.0, 595.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff000000)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(72.0, 164.0, 491.0, 315.0),
                  size: Size(635.0, 595.0),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff000000)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(101.0, 181.0, 125.0, 36.0),
                  size: Size(635.0, 595.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'Comments',
                    style: TextStyle(
                      fontFamily: 'PingFang HK',
                      fontSize: 25,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(241.0, 513.0, 154.0, 48.0),
                  size: Size(635.0, 595.0),
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff000000)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(271.0, 519.0, 95.0, 23.0),
                  size: Size(635.0, 595.0),
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: SingleChildScrollView(
                      child: Text(
                    'SUBMIT',
                    style: TextStyle(
                      fontFamily: 'PingFang HK',
                      fontSize: 25,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  )),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(131.0, 72.0, 64.0, 36.0),
                  size: Size(635.0, 595.0),
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontFamily: 'PingFang HK',
                      fontSize: 25,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(117.5, 59.5, 1.0, 58.0),
                  size: Size(635.0, 595.0),
                  pinLeft: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_6k5fst,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_6k5fst =
    '<svg viewBox="262.5 533.5 1.0 58.0" ><path transform="translate(262.5, 533.5)" d="M 0 0 L 0 58" fill="none" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
