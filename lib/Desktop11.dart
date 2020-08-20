import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Desktop17.dart';
import 'package:adobe_xd/page_link.dart';

class Desktop11 extends StatelessWidget {
  Desktop11({
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
            child: Component281(),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(110.0, 325.0, 507.0, 489.0),
                        size: Size(1920.0, 1200.0),
                        pinLeft: true,
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
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(707.0, 325.0, 507.0, 489.0),
                        size: Size(1920.0, 1200.0),
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
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(1304.0, 325.0, 507.0, 489.0),
                                                  size: Size(1920.0, 1200.0),
                                                  pinRight: true,
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
                          
                          Component271() {
}
            
            Component281() {
}
