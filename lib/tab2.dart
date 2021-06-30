import 'dart:math';
import 'package:flutter/material.dart';

class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    var heightPiece = MediaQuery.of(context).size.height / 10;
    var widthPiece = MediaQuery.of(context).size.width / 10;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: PageView.builder(
            itemCount: 20,
            scrollDirection: Axis.vertical,
            controller: PageController(viewportFraction: 0.85),
            itemBuilder: (BuildContext context, index) {
              return Padding(
                  padding: EdgeInsets.all(widthPiece / 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Color.fromARGB(
                                Random().nextInt(256),
                                Random().nextInt(256),
                                Random().nextInt(256),
                                Random().nextInt(256))),
                        height: heightPiece * 6,
                      )
                    ],
                  ));
            }),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
