import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';

import './Component291.dart';

class Desktop9 extends StatelessWidget {
  Desktop9({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcfcfc),
      body: Stack(
        children: <Widget>[
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
                        bounds: Rect.fromLTWH(79.0, 250.0, 675.0, 171.0),
                        size: Size(1920.0, 1200.0),
                        pinLeft: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Text(
                          'WELCOME TO NYC146\n',
                          style: TextStyle(
                            fontFamily: 'PingFang HK',
                            fontSize: 60,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(1413.0, 480.0, 419.0, 100.0),
                        size: Size(1920.0, 1200.0),
                        pinRight: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            border: Border.all(width: 1.0, color: const Color(0xff707070)),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(1485.0, 502.0, 275.0, 56.0),
                        size: Size(1920.0, 1200.0),
                        pinRight: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Text(
                          'GET STARTED',
                          style: TextStyle(
                            fontFamily: 'PingFang HK',
                            fontSize: 40,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(-16.0, 520.0, 1953.0, 698.0),
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
                        bounds: Rect.fromLTWH(79.0, 368.0, 242.0, 162.0),
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
                        bounds: Rect.fromLTWH(815.0, 352.0, 145.0, 97.0),
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
                        bounds: Rect.fromLTWH(1485.0, 175.0, 225.0, 150.0),
                        size: Size(1920.0, 1200.0),
                        pinRight: true,
                        pinTop: true,
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
                    ],
                  ),
                );
              }
            }
            
            Component291() {
}
