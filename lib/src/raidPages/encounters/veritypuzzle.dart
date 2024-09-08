import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:wakelock_plus/wakelock_plus.dart';

import '/src/enumerators/enums.dart';
import '/src/components/appstate.dart';

class VeritySolver extends StatelessWidget {
  const VeritySolver({super.key});
  @override
  Widget build(BuildContext context) {
    WakelockPlus.enable();
    var appState = context.watch<VPAppState>();
    return Scaffold(
        body: Center(
          heightFactor: 1,
          child:SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      inSelectorWidget(
                        appState,
                        0,
                        'Left Statue:',
                        appState.inImgList[0]
                      ),
                      inSelectorWidget(
                        appState,
                        1,
                        'Center Statue:',
                        appState.inImgList[1]
                      ),
                      inSelectorWidget(
                        appState,
                        2,
                        'Right Statue:',
                        appState.inImgList[2]
                      )
                    ]
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      outSelectorWidget(
                        appState,
                        0,
                        'Left Statue:',
                        appState.outImgList[0]
                      ),
                      outSelectorWidget(
                        appState,
                        1,
                        'Center Statue:',
                        appState.outImgList[1]
                      ),
                      outSelectorWidget(
                        appState,
                        2,
                        'Right Statue:',
                        appState.outImgList[2]
                      )
                    ]
                  ),
                  Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(4),
                            child: Visibility(
                                visible: appState.solveable,
                                child: SizedBox(
                                  width: 150,
                                  height: 50,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.zero),
                                          shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5.0)
                                              )
                                          )
                                      ),
                                      onPressed: () => Navigator.push(context, 
                                          MaterialPageRoute(builder: (BuildContext context) {
                                            return VeritySolution();
                                          }
                                        ),
                                      ),
                                      child: Text('Solve')
                                  ),
                                )
                            )
                        )
                      ]
                  ),
                  errorTextRow(
                    ['Two or more inside shapes are alike,\ndouble check inside callouts and inputs.'],
                    !appState.insideSolveable
                  ),
                  errorTextRow(
                    ['Given Outside Shapes are Unsolveable\nLikely cause:\nOutside shapes have more than two of a given dissectable shape.', 'Please double check outside statues 3D shapes and inputs.'],
                    !appState.outsideSolveable
                  )
                ]
            ),
          ),
        )
    );
  }
}

Widget errorTextRow(List<String> strList, bool gowmyn){
  TextStyle tSty = TextStyle(color: Color.fromARGB(255, 255, 0, 0));
  List<Widget> errWidget = [];
  for(int i = 0; i < strList.length; i++){
    errWidget = errWidget + [Text(style: tSty, strList[i])];
  }
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: EdgeInsets.all(4),
        child: Visibility(
          visible: gowmyn,
          child: Column(
            children: errWidget,
          )
        )
      )
    ]
  );
}

Widget inSelectorWidget(VPAppState appState, int selectorIndex, String statue, ImageProvider imageProv){
  return Padding(
      padding: EdgeInsets.only(top: 55, left: 4, right: 4, bottom: 4),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              height: 20,
              child: Text(
                textAlign: TextAlign.center,
                statue,
              ),
            ),
            inSelectedBtn(
              appState,
              selectorIndex, 
              imageProv
            ),
            Divider(thickness: 4),
            Visibility(
              visible: appState.inVis[selectorIndex],
              child: Column(
                children: [
                  inSelectButton(
                    appState,
                    selectorIndex,
                    InsideShapes.triangle,
                    'assets/images/Tri.png'
                  ),
                  inSelectButton(
                    appState,
                    selectorIndex,
                    InsideShapes.circle,
                    'assets/images/Circ.png'
                  ),
                  inSelectButton(
                    appState,
                    selectorIndex,
                    InsideShapes.square,
                    'assets/images/Squ.png'
                  ),
                ],
              ),
            ),
          ]
      )
  );
}

Widget inSelectedBtn(VPAppState state, int iDex, ImageProvider img){
  return SizedBox(
      width: 100,
      height: 100,
      child: ElevatedButton(
        style: ButtonStyle(
            padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.zero),
            shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)
                )
            )
        ),
        onPressed: () {
          state.setInVis(iDex);
        },
        child: Image(
          image:img,
        ),
      )
  );
}

Widget inSelectButton(VPAppState state, int inDex, InsideShapes shape, String buttonImage){
  return SizedBox(
    width: 100,
    height: 100,
    child: ElevatedButton(
      style: ButtonStyle(
          padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.zero),
          shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)
              )
          )
      ),
      onPressed: () {
        state.setInside(inDex, shape);
        state.setInVis(inDex);
      },
      child: Image(
          image: Image.asset(buttonImage).image
      ),
    )
  );
}

Widget outSelectorWidget(VPAppState appState, int selectorIndex, String statue, ImageProvider imageProv){
  return Padding(
      padding: EdgeInsets.all(4),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              height: 20,
              child: Text(
                textAlign: TextAlign.center,
                statue,
              ),
            ),
            outSelectedBtn(
              appState,
              selectorIndex, 
              imageProv
            ),
            Divider(thickness: 4),
            Visibility(
              visible: appState.outVis[selectorIndex],
              child: Column(
                children: [
                  outSelectButton(
                    appState,
                    selectorIndex,
                    OutsideShapes.pyramid,
                    'assets/images/oPy.png'
                  ),
                  outSelectButton(
                    appState,
                    selectorIndex,
                    OutsideShapes.sphere,
                    'assets/images/oSp.png'
                  ),
                  outSelectButton(
                    appState,
                    selectorIndex,
                    OutsideShapes.cube,
                    'assets/images/oCu.png'
                  ),
                  outSelectButton(
                    appState,
                    selectorIndex,
                    OutsideShapes.cone,
                    'assets/images/oCo.png'
                  ),
                  outSelectButton(
                    appState,
                    selectorIndex,
                    OutsideShapes.cylinder,
                    'assets/images/oCy.png'
                  ),
                  outSelectButton(
                    appState,
                    selectorIndex,
                    OutsideShapes.prism,
                    'assets/images/oPr.png'
                  ),
                ],
              ),
            ),
          ]
      )
  );
}

Widget outSelectedBtn(VPAppState state, int iDex, ImageProvider img){
  return SizedBox(
      width: 100,
      height: 100,
      child: ElevatedButton(
        style: ButtonStyle(
            padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.zero),
            shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)
                )
            )
        ),
        onPressed: () {
          state.setOutVis(iDex);
        },
        child: Image(
          image:img,
        ),
      )
  );
}
Widget outSelectButton(VPAppState state, int inDex, OutsideShapes shape, String buttonImage){
  return SizedBox(
    width: 100,
    height: 100,
    child: ElevatedButton(
      style: ButtonStyle(
          padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.zero),
          shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)
              )
          )
      ),
      onPressed: () {
        state.setOutside(inDex, shape);
        state.setOutVis(inDex);
      },
      child: Image(
          image: Image.asset(buttonImage).image
      ),
    )
  );
}

Widget solutionRow(VPAppState appState, TextStyle vSolStyle, EdgeInsets pad, int soVisIndex, String dunkSet){
  int imgListLeft = soVisIndex * 3;
  int imgListMid = imgListLeft + 1;
  int imgListRight = imgListMid + 1;
  return Padding(
    padding: pad,
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: appState.soVis[soVisIndex],
          child: Column(
            children: [
              Text(
                  style: vSolStyle,
                  dunkSet
              ),
              Row(
                children: [
                  solRowCard(
                    pad,
                    'Left Dissect:',
                    Image(image: appState.solutionImgList[imgListLeft])
                  ),
                  solRowCard(
                    pad,
                    'Center Dissect:',
                    Image(image: appState.solutionImgList[imgListMid])
                  ),
                  solRowCard(
                    pad,
                    'Right Dissect:',
                    Image(image: appState.solutionImgList[imgListRight])
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget solRowCard(EdgeInsets pad, String lcrDisect, Image cardImg){
  return Padding(
    padding: pad,
    child: Column(
      children: [
        Text(
            style: TextStyle(
              color: Color.fromARGB(255, 184, 60, 3),
            ),
            lcrDisect
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: Card(
              elevation: 2.5,
              child: cardImg
          ),
        ),
      ],
    ),
  );
}

class VeritySolution extends StatelessWidget {
  const VeritySolution({super.key});
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<VPAppState>();
    final vsTheme = Theme.of(context);
    final vsStyle = vsTheme.textTheme.displayMedium!.copyWith(
      color: Color.fromARGB(255, 184, 60, 3),
    );

    WakelockPlus.enable();
    appState.solve();
    appState.setSoVis();

    return Scaffold(
        body: Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  solutionRow(appState, vsStyle, EdgeInsets.all(4), 0, 'First Set of Dunks:'),
                  solutionRow(appState, vsStyle, EdgeInsets.all(4), 1, 'Second Set of Dunks:'),
                  solutionRow(appState, vsStyle, EdgeInsets.all(4), 2, 'Third Set of Dunks:')
                ]
            )
        )
    );
  }
}