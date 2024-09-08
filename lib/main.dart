import 'package:flutter/material.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '/src/raidPages/salvations_edge.dart';
import '/src/components/appstate.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(D2Raid());
}
class D2Raid extends StatelessWidget {
  const D2Raid({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<VPAppState>();
    appState.appStart();
    WakelockPlus.enable();
    return ChangeNotifierProvider(
      create: (context) => VPAppState(),
      child: MaterialApp(
        title: 'D2 Encounter (Raids)',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 81, 0, 156)),
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 30, 0, 58), 
            brightness: Brightness.dark
          ),
        ),
        themeMode: ThemeMode.dark,
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  raidButton(context,
                    SalvationsEdge(),
                    Image(image:Image.asset('assets/images/SEBadge.png').image),
                    1.5,
                    "Salvation's\nEdge"
                  ),
                  raidButtonNull(context, 
                    "CrotasEnd()",
                    Image(image:Image.asset('assets/images/CrotaBadge.png').image),
                    3,
                    "Crota's End"
                  ),
                  raidButtonNull(context, 
                    "RootOfNightmares()",
                    Image(image:Image.asset('assets/images/RoNBadge.png').image),
                    1,
                    "Root\nof\nNightmares"
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  raidButtonNull(context, 
                    "KingsFall()",
                    Image(image:Image.asset('assets/images/KingsFallBadge.png').image),
                    3,
                    "King's Fall"
                  ),
                  raidButtonNull(context, 
                    "VowOfTheDisciple()",
                    Image(image:Image.asset('assets/images/VowBadge.png').image),
                    1,
                    "Vow\nof the\nDisciple"
                  ),
                  raidButtonNull(context, 
                    "VaultOfGlass()",
                    Image(image:Image.asset('assets/images/VoGBadge.png').image),
                    1,
                    "Vault\nof\nGlass"
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  raidButtonNull(context, 
                    "DeepStoneCrypt()",
                    Image(image:Image.asset('assets/images/DSCryptBadge.png').image),
                    1,
                    "Deep\nStone\nCrypt"
                  ),
                  raidButtonNull(context, 
                    "GardenOfSalvation()",
                    Image(image:Image.asset('assets/images/GoSBadge.png').image),
                    1,
                    "Garden\nof\nSalvation"
                  ),
                  raidButtonNull(context, 
                    "LastWish()",
                    Image(image:Image.asset('assets/images/LastWishBadge.png').image),
                    3,
                    "Last Wish"
                  )
                ],
              )
            ]
        ),
      ),
    );
  }

pressCheck(String raid, BuildContext ctext) {
  return null;
}
Widget raidButton(BuildContext context, dynamic mPRoute, Image badge, double hFactor, String buttonTxt){
  return Padding(
    padding: EdgeInsets.all(2),
    child: SizedBox(
      width: 100,
      height: 150,
      child: ElevatedButton(
          style: ButtonStyle(
              padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.zero),
              shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  )
              )
          ),
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => mPRoute));},
          child: Column(
            children: [
              badge,
              Center(
                heightFactor: hFactor,
                child: Text(textAlign: TextAlign.center, buttonTxt)
              ),
            ],
          )
      ),
    ),
  );
}

Widget raidButtonNull(BuildContext context, String mPRoute, Image badge, double hFactor, String buttonTxt){
  return Padding(
    padding: EdgeInsets.all(2),
    child: SizedBox(
      width: 100,
      height: 150,
      child: ElevatedButton(
          style: ButtonStyle(
              padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.zero),
              shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  )
              )
          ),
          onPressed: null,
          child: Column(
            children: [
              badge,
              Center(
                heightFactor: hFactor,
                child: Text(textAlign: TextAlign.center, buttonTxt)
              ),
            ],
          )
      ),
    ),
  );
}
}
