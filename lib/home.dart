import 'package:flutter/material.dart';
import 'package:vimish/link_bar.dart';

class Home extends StatelessWidget{
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.loose(const Size(600.0,400.0)),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
                colors: [Colors.blue.shade900,Colors.red.shade800]
            ),
            backgroundBlendMode: BlendMode.plus
        ),
        // data for the card starts here .....
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            const Text("Hey, This is",
              textAlign: TextAlign.center,
              textScaleFactor: 1.5,
            ),
            const Text("Vimish Arora",
              textWidthBasis: TextWidthBasis.longestLine,
              textAlign: TextAlign.center,
              textScaleFactor: 2,
            ),
             CircleAvatar(
               radius: 90,backgroundColor: Colors.white,
               child: CircleAvatar(
                radius: 85,
                backgroundColor: Colors.white,
                backgroundImage: Image.asset("image/profile.jpg").image
            ),
             ),
            const Text('FLUTTER DEVELOPER'),
            const Linkbar(),
          ],
        )
    );
  }
}