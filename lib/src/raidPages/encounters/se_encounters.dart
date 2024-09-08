import 'package:flutter/material.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import 'veritypuzzle.dart';
import '/src/components/components.dart';

class SEEncOne extends StatelessWidget {
  const SEEncOne({super.key});
  @override
  Widget build(BuildContext context) {
    WakelockPlus.enable();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:55, left:20),
        child: Column(
          children: [
            padrowbox(context, 
              EdgeInsets.all(15.0),
              null, null,
              Text(
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 123, 0),
                  fontSize: 42
                ),
                textAlign: TextAlign.center,
                'Salvation\'s Edge\nSubstratum:'
              ),
            ),
            lootTableBtn(context,
              EdgeInsets.all(25.0),
              MediaQuery.of(context).size.width*0.9, null,
              Image(image: AssetImage('assets/images/SEOneLoot.jpg')).image,
              "Substratum Loot"
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                overlayImgButton(context,
                  Image.asset('assets/images/Cone_U.png'),
                  MediaQuery.of(context).size.width*0.9, null,
                  Image.asset('assets/images/Cone_U.png').image,
                  Text('Encounter 1')
                ),
                overlayImgButton(context,
                  Image.asset('assets/images/Cone_U.png'),
                  MediaQuery.of(context).size.width*0.9, null,
                  Image.asset('assets/images/Cone_U.png').image,
                  Text('Encounter 2')
                ),
                overlayImgButton(context,
                  Image.asset('assets/images/Cone_U.png'),
                  MediaQuery.of(context).size.width*0.9, null,
                  Image.asset('assets/images/Cone_U.png').image,
                  Text('Encounter 3')
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                  textAlign: TextAlign.center,
                  "Note: The 'encounter' buttons on this page\nare currently placeholders"
                )
              ]
            )
          ]
        )
      ),
    );
  }
}

class SEEncTwo extends StatelessWidget {
  const SEEncTwo({super.key});
  @override
  Widget build(BuildContext context) {
    WakelockPlus.enable();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:55, left:20),
        child: Column(
          children: [
            padrowbox(context, 
              EdgeInsets.all(15.0),
              null, null,
              Text(
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 123, 0),
                  fontSize: 42
                ),
                textAlign: TextAlign.center,
                'Salvation\'s Edge\nDissipation:'
              ),
            ),
            lootTableBtn(context,
              EdgeInsets.all(25.0),
              MediaQuery.of(context).size.width*0.9, null,
              Image(image: AssetImage('assets/images/SETwoLoot.jpg')).image,
              "Dissipation Loot"
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                overlayImgButton(context,
                  Image.asset('assets/images/Cone_U.png'),
                  MediaQuery.of(context).size.width*0.9, null,
                  Image.asset('assets/images/Cone_U.png').image,
                  Text('Encounter 1')
                ),
                overlayImgButton(context,
                  Image.asset('assets/images/Cone_U.png'),
                  MediaQuery.of(context).size.width*0.9, null,
                  Image.asset('assets/images/Cone_U.png').image,
                  Text('Encounter 2')
                ),
                overlayImgButton(context,
                  Image.asset('assets/images/Cone_U.png'),
                  MediaQuery.of(context).size.width*0.9, null,
                  Image.asset('assets/images/Cone_U.png').image,
                  Text('Encounter 3')
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                  textAlign: TextAlign.center,
                  "Note: The 'encounter' buttons on this page\nare currently placeholders"
                )
              ]
            )
          ]
        )
      ),
    );
  }
}

class SEEncThree extends StatelessWidget {
  const SEEncThree({super.key});
  @override
  Widget build(BuildContext context) {
    WakelockPlus.enable();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:55, left:20),
        child: Column(
          children: [
            padrowbox(context, 
              EdgeInsets.all(15.0),
              null, null,
              Text(
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 123, 0),
                  fontSize: 42
                ),
                textAlign: TextAlign.center,
                'Salvation\'s Edge\nRepository:'
              ),
            ),
            lootTableBtn(context,
              EdgeInsets.all(25.0),
              MediaQuery.of(context).size.width*0.9, null,
              Image(image: AssetImage('assets/images/SEThreeLoot.jpg')).image,
              "Repository Loot"
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                overlayImgButton(context,
                  Image.asset('assets/images/Cone_U.png'),
                  MediaQuery.of(context).size.width*0.9, null,
                  Image.asset('assets/images/Cone_U.png').image,
                  Text('Encounter 1')
                ),
                overlayImgButton(context,
                  Image.asset('assets/images/Cone_U.png'),
                  MediaQuery.of(context).size.width*0.9, null,
                  Image.asset('assets/images/Cone_U.png').image,
                  Text('Encounter 2')
                ),
                overlayImgButton(context,
                  Image.asset('assets/images/Cone_U.png'),
                  MediaQuery.of(context).size.width*0.9, null,
                  Image.asset('assets/images/Cone_U.png').image,
                  Text('Encounter 3')
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                  textAlign: TextAlign.center,
                  "Note: The 'encounter' buttons on this page\nare currently placeholders"
                )
              ]
            )
          ]
        )
      ),
    );
  }
}

class SEEncFour extends StatelessWidget {
  const SEEncFour({super.key});
  @override
  Widget build(BuildContext context) {
    WakelockPlus.enable();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:55, left:20),
        child: Column(
          children: [
            padrowbox(context, 
              EdgeInsets.all(15.0),
              null, null,
              Text(
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 123, 0),
                  fontSize: 42
                ),
                textAlign: TextAlign.center,
                'Salvation\'s Edge\nVerity:'
              ),
            ),
            lootTableBtn(context,
              EdgeInsets.all(25.0),
              MediaQuery.of(context).size.width*0.9, null,
              Image(image: AssetImage('assets/images/SEFourLoot.jpg')).image,
              "Verity Loot"
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                overlayImgButton(context,
                  Image.asset('assets/images/Cone_U.png'),
                  MediaQuery.of(context).size.width*0.9, null,
                  Image.asset('assets/images/Cone_U.png').image,
                  Text('Encounter 1')
                ),
                overlayImgButton(context,
                  Image.asset('assets/images/Cone_U.png'),
                  MediaQuery.of(context).size.width*0.9, null,
                  Image.asset('assets/images/Cone_U.png').image,
                  Text('Encounter 2')
                ),
                overlayImgButton(context,
                  Image.asset('assets/images/Cone_U.png'),
                  MediaQuery.of(context).size.width*0.9, null,
                  Image.asset('assets/images/Cone_U.png').image,
                  Text('Encounter 3')
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                encounterButton(context,
                  VeritySolver(),
                  Image(image: Image.asset('assets/images/Cone_U.png').image),
                  Text('Verity Puzzle')
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                  textAlign: TextAlign.center,
                  "Note: The 'encounter' buttons on this page\nare currently placeholders"
                )
              ]
            )
          ]
        )
      ),
    );
  }
}

class SEEncFive extends StatelessWidget {
  const SEEncFive({super.key});
  @override
  Widget build(BuildContext context) {
    WakelockPlus.enable();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:55, left:20),
        child: Column(
          children: [
            padrowbox(context, 
              EdgeInsets.all(15.0),
              null, null,
              Text(
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 123, 0),
                  fontSize: 42
                ),
                textAlign: TextAlign.center,
                'Salvation\'s Edge\nFinal Boss\nThe Witness:'
              ),
            ),
            lootTableBtn(context,
              EdgeInsets.all(25.0),
              MediaQuery.of(context).size.width*0.9, null,
              Image(image: AssetImage('assets/images/SEFiveLoot.jpg')).image,
              "The Witness Loot"
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                overlayImgButton(context, 
                  Image.asset('assets/images/Cone_U.png'),
                  MediaQuery.of(context).size.width*0.9, null,
                  Image.asset('assets/images/Cone_U.png').image,
                  Text('Encounter 1')
                ),
                overlayImgButton(context, 
                  Image.asset('assets/images/Cone_U.png'),
                  MediaQuery.of(context).size.width*0.9, null,
                  Image.asset('assets/images/Cone_U.png').image,
                  Text('Encounter 2')
                ),
                overlayImgButton(context, 
                  Image.asset('assets/images/Cone_U.png'),
                  MediaQuery.of(context).size.width*0.9, null,
                  Image.asset('assets/images/Cone_U.png').image,
                  Text('Encounter 3')
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                  textAlign: TextAlign.center,
                  "Note: The 'encounter' buttons on this page\nare currently placeholders"
                )
              ]
            )
          ]
        )
      ),
    );
  }
}