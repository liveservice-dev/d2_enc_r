import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '/src/components/components.dart';
import '/src/components/appstate.dart';

import './encounters/veritypuzzle.dart';
import './encounters/se_encounters.dart';

class SalvationsEdge extends StatelessWidget {
  const SalvationsEdge({super.key});
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<VPAppState>();
    appState.appStart();
    WakelockPlus.enable();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:55, left:20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Text(
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 123, 0),
                        fontSize: 42
                      ),
                      'Salvation\'s Edge:'
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250,
                    height: 35,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 83, 83, 83))
                      ),
                      onPressed: () {
                        imgOverlay(context,
                          null, MediaQuery.of(context).size.height*0.5,
                          Image(image: AssetImage('assets/images/Full_Loot.png')).image
                        );
                      },
                      child: Text(style: TextStyle(color: Color.fromARGB(255, 255, 123, 0)),"Full Loot Table"),
                    )
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                encounterButton(context,
                  SEEncOne(),
                  Image(
                    height: 100,
                    width: 100,
                    image: Image.asset('assets/images/E1.png').image
                  ),
                  Text('Encounter 1')
                ),
                encounterButton(context,
                  SEEncTwo(),
                  Image(
                    height: 100,
                    width: 100,
                    image: Image.asset('assets/images/E2.png').image
                  ),
                  Text('Encounter 2')
                ),
                encounterButton(context,
                  SEEncThree(),
                  Image(
                    height: 100,
                    width: 100,
                    image: Image.asset('assets/images/E3.png').image
                  ),
                  Text('Encounter 3')
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                encounterButton(context,
                  SEEncFour(),
                  Image(
                    height: 100,
                    width: 100,
                    image: Image.asset('assets/images/E4.png').image
                  ),
                  Text('Encounter 4')
                ),
                encounterButton(context,
                  VeritySolver(),
                  Image(image: Image.asset('assets/images/Cone_U.png').image),
                  Text('Verity Puzzle')
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                encounterButton(context,
                  SEEncFive(),
                  Image(image: Image.asset('assets/images/witness.png').image),
                  Text('Witness')
                ),
              ],
            ),
          ]
        )
      ),
    );
  }
}