import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'Desktop11.dart';

class Desktop17 extends StatelessWidget {
  Desktop17({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcfcfc),
      body: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(595.0, 247.0, 730.0, 705.0),
            size: Size(1920.0, 1200.0),
            pinTop: true,
            pinBottom: true,
            fixedWidth: true,
            child: Component221(),
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
                    ],
                  ),
                );
              }
            }
            
            Component221() {
}
