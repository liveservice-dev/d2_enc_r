import 'package:flutter/material.dart';

import '../enumerators/enums.dart';
import 'package:provider/provider.dart';

class SalvationsEdge extends StatelessWidget {
  const SalvationsEdge({super.key});
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<VPAppState>();
    appState.appStart();
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

class SEEncOne extends StatelessWidget {
  const SEEncOne({super.key});
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<VPAppState>();
    appState.appStart();

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
    var appState = context.watch<VPAppState>();
    appState.appStart();

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
    var appState = context.watch<VPAppState>();
    appState.appStart();

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
    var appState = context.watch<VPAppState>();
    appState.appStart();

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
    var appState = context.watch<VPAppState>();
    appState.appStart();

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

Widget lootTableBtn(BuildContext context, EdgeInsets padding, double? w, double? h, ImageProvider overlayImg, String btnText){
  return padrowbox(context,
    padding,
    250,
    35,
    ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 83, 83, 83))
      ),
      onPressed: () {
        imgOverlay(context, w, h, overlayImg);
      },
      child: Text(style: TextStyle(color: Color.fromARGB(255, 255, 123, 0)), btnText),
    )
  );
}
void imgOverlay(BuildContext ctext, double? w, double? h, ImageProvider imgObj) {
  Image imgr;
  if(w != null){
    imgr = Image(
      width: w,
      image: imgObj
    );
  } else {
    imgr = Image(
      height: h,
      image: imgObj,
    );
  }
  OverlayEntry overlayEntry = OverlayEntry(
    builder: (context) => Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.5,
        child: InteractiveViewer.builder(
          minScale: 1,
          maxScale: 2.5,
          builder: (context, viewport) => imgr
        ),
      ),
    ),
  );
  OverlayEntry? close;
  close = OverlayEntry(
    builder: (context) {
      return Positioned(
        right: MediaQuery.of(context).size.width*0.05,
        top: MediaQuery.of(context).size.height*0.25,
        child: SizedBox(
          width: 50,
          height: 50,
          child: IconButton(
            onPressed: () {
              close!.remove();
              overlayEntry.remove();
            },
            icon: Icon(Icons.close_rounded),
            color: const Color.fromARGB(255, 255, 82, 82),
          )
        ),
      );
    }
  );

  Overlay.of(ctext).insert(overlayEntry);
  Overlay.of(ctext).insert(close, above: overlayEntry);
}
Widget overlayImgButton(BuildContext context, Image buttonImage, double? w, double? h, ImageProvider overlayImg, Text buttonText){
  return SizedBox(
    width: 100,
    height: 125,
    child: ElevatedButton(
      style: ButtonStyle(
        padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.zero),
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)
          )
        )
      ),
      onPressed: () {imgOverlay(context, w, h, overlayImg);},
      child: Column(
        children: [
          buttonImage,
          buttonText
        ]
      )
    ),
  );
}
Widget encounterButton(BuildContext context, dynamic encounterRoute, Image imageWidget, Text textWidget){
  return SizedBox(
    width: 100,
    height: 125,
    child: ElevatedButton(
      style: ButtonStyle(
        padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.zero),
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)
          )
        )
      ),
      onPressed: () => Navigator.push(context, MaterialPageRoute(builder:(context) => encounterRoute)),
      child: Column(
        children: [ 
          imageWidget,
          textWidget
        ]
      )
    ),
  );
}
Widget padrowbox(BuildContext context, EdgeInsets padding, double? boxWidth, double? boxHeight, Widget childWidget){
  if(boxWidth != null && boxHeight != null){
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: boxWidth,
            height: boxHeight,
            child: childWidget
          )
        ]
      )
    );
  } else {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: childWidget
          )
        ]
      )
    );
  }
}
class VPAppState extends ChangeNotifier {
  var insideShapeSelections = [InsideShapes.triangle, InsideShapes.circle, InsideShapes.square];
  var outsideShapeSelections = [OutsideShapes.pyramid, OutsideShapes.sphere, OutsideShapes.cube];

  List<bool> inVis = [false, false, false];
  List<bool> outVis = [false, false, false];

  var inImgList = [Image.asset('assets/images/Tri.png').image, Image.asset('assets/images/Circ.png').image, Image.asset('assets/images/Squ.png').image];
  var outImgList = [Image.asset('assets/images/oPy.png').image, Image.asset('assets/images/oSp.png').image, Image.asset('assets/images/oCu.png').image];

  var insideSolveable = true;
  var outsideSolveable = true;
  var solveable = true;

  List<SolutionShapes> solutionList = [];
  List<ImageProvider> solutionImgList = [];

  List<bool> soVis = [true, true, true];

  void appStart() {
    solutionList = [];
    solutionImgList = [];
    for(int soImgL = 0; soImgL <9; soImgL++){
      solutionList = solutionList + [SolutionShapes.xray];
      solutionImgList = solutionImgList + [Image.asset('assets/images/xray.png').image];
    }
  }

  void updateInVisAtIndex(int inIndex, bool inVisible){
    inVis[inIndex] = inVisible;
  }

  void updateOutVisAtIndex(int outIndex, bool outVisible){
    outVis[outIndex] = outVisible;
  }

  void setInside(int index, InsideShapes ishape) {
    insideShapeSelections[index] = ishape;
    setInShapes(index);
    resolveCheck();
  }

  void setInShapes(int ilmr) {
    /// Set selected inside shape image to the appropriate list index
    /// ilmr (inside left,mid,right) is the index to set [0,1,2]
    /// if insideShapeSelections index(olmr) is shape, set appropriate image shape
    if (insideShapeSelections[ilmr] == InsideShapes.circle){
      inImgList[ilmr] = Image.asset('assets/images/Circ.png').image;
    } else if (insideShapeSelections[ilmr] == InsideShapes.square){
      inImgList[ilmr] = Image.asset('assets/images/Squ.png').image;
    } else if (insideShapeSelections[ilmr] == InsideShapes.triangle){
      inImgList[ilmr] = Image.asset('assets/images/Tri.png').image;
    }
    notifyListeners();
  }

  void setInVis(int insideIndex) {
    if (inVis[insideIndex] == false) {
      for(int i = 0; i<inVis.length; i++){
        if(i==insideIndex){
          updateInVisAtIndex(insideIndex, true);
        } else {
          updateInVisAtIndex(i, false);
        }
      }
      for(int j = 0; j<outVis.length; j++){
        updateOutVisAtIndex(j, false);
      }
    } else {
      updateInVisAtIndex(insideIndex, false);
    }
    notifyListeners();
  }

  void setOutVis(int outsideIndex) {
    if (outVis[outsideIndex] == false) {
      for(int i = 0; i<outVis.length; i++){
        if(i==outsideIndex){
          updateOutVisAtIndex(outsideIndex, true);
        } else {
          updateOutVisAtIndex(i, false);
        }
      }
      for(int j = 0; j<inVis.length; j++){
        updateInVisAtIndex(j, false);
      }
    } else {
      updateOutVisAtIndex(outsideIndex, false);
    }
    notifyListeners();
  }

  void setOutside(int outdex, OutsideShapes oshape) {
    outsideShapeSelections[outdex] = oshape;
    setOutShapes(outdex);
    resolveCheck();
  }

  void setOutShapes(int olmr) {
    /// Set selected outside shape image to the appropriate list index
    /// olmr (outside left,mid,right) is the index to set [0,1,2]
    /// if outsideShapeSelections index(olmr) is shape, set appropriate image shape
    if (outsideShapeSelections[olmr] == OutsideShapes.pyramid){
      outImgList[olmr] = Image.asset('assets/images/oPy.png').image;
    } else if (outsideShapeSelections[olmr] == OutsideShapes.sphere){
      outImgList[olmr] = Image.asset('assets/images/oSp.png').image;
    } else if (outsideShapeSelections[olmr] == OutsideShapes.cube){
      outImgList[olmr] = Image.asset('assets/images/oCu.png').image;
    } else if (outsideShapeSelections[olmr] == OutsideShapes.cone){
      outImgList[olmr] = Image.asset('assets/images/oCo.png').image;
    } else if (outsideShapeSelections[olmr] == OutsideShapes.cylinder){
      outImgList[olmr] = Image.asset('assets/images/oCy.png').image;
    } else if (outsideShapeSelections[olmr] == OutsideShapes.prism){
      outImgList[olmr] = Image.asset('assets/images/oPr.png').image;
    }
    notifyListeners();
  }

  void resolveCheck() {
    insideSolveable = checkInsideSolveable();
    outsideSolveable = checkOutsideSolveable();
    solveable = checkSolveable();
    notifyListeners();
  }

  bool checkSolveable() {
    if(insideSolveable == false){
      return false;
    } else if(outsideSolveable == false){
      return false;
    }
    return true;
  }

  bool checkOutsideSolveable() {
    OutsideShapes oSSZero = outsideShapeSelections[0];
    OutsideShapes oSSOne = outsideShapeSelections[1];
    OutsideShapes oSSTwo = outsideShapeSelections[2];
    // create a list of the given arguments
    List<OutsideShapes> oSSList = [oSSZero, oSSOne, oSSTwo];
    // return check variable
    var loopUnbroken = true;
    // iterate through the list
    for (int i = 0; i < oSSList.length; i++) {
      // if current shape is a sphere,
      //// iterate through the list looking for other shapes containing circles
      // else if current shape is a cube
      //// iterate through the list looking for other shapes containing squares
      // else if current shape is a pyramid
      //// iterate through the list looking for other shapes containing triangles
      if (oSSList[i] == OutsideShapes.sphere) {
        for (int j = 0; j < oSSList.length; j++) {
          if (oSSList[j] == OutsideShapes.sphere) {
            if (i != j) {
              loopUnbroken = false;
              break;
            }
          } else if (oSSList[j] == OutsideShapes.cylinder) {
            loopUnbroken = false;
            break;
          } else if (oSSList[j] == OutsideShapes.cone) {
            loopUnbroken = false;
            break;
          }
        }
      } else if (oSSList[i] == OutsideShapes.cube) {
        for (int k = 0; k < oSSList.length; k++) {
          if (oSSList[k] == OutsideShapes.cube) {
            if (i != k) {
              loopUnbroken = false;
              break;
            }
          } else if (oSSList[k] == OutsideShapes.prism) {
            loopUnbroken = false;
            break;
          } else if (oSSList[k] == OutsideShapes.cylinder) {
            loopUnbroken = false;
            break;
          }
        }
      } else if (oSSList[i] == OutsideShapes.pyramid) {
        for (int l = 0; l < oSSList.length; l++) {
          if (oSSList[l] == OutsideShapes.pyramid) {
            if (i != l) {
              loopUnbroken = false;
              break;
            }
          } else if (oSSList[l] == OutsideShapes.cone) {
            loopUnbroken = false;
            break;
          } else if (oSSList[l] == OutsideShapes.prism) {
            loopUnbroken = false;
            break;
          }
        }
      }
    }
    if (loopUnbroken == false) {
      return false;
    }
    //check prism
    if (oSSZero == OutsideShapes.prism) {
      if (oSSOne == OutsideShapes.prism && oSSTwo != OutsideShapes.sphere) {
        return false;
      } else if (oSSOne == OutsideShapes.sphere &&
          oSSTwo != OutsideShapes.prism) {
        return false;
      } else if (oSSOne == OutsideShapes.cone &&
          oSSTwo != OutsideShapes.cylinder) {
        return false;
      } else if (oSSOne == OutsideShapes.cylinder &&
          oSSTwo != OutsideShapes.cone) {
        return false;
      }
    }
    //check cone
    if (oSSZero == OutsideShapes.cone) {
      if (oSSOne == OutsideShapes.cone && oSSTwo != OutsideShapes.cube) {
        return false;
      } else if (oSSOne == OutsideShapes.cube && oSSTwo != OutsideShapes.cone) {
        return false;
      } else if (oSSOne == OutsideShapes.prism &&
          oSSTwo != OutsideShapes.cylinder) {
        return false;
      } else if (oSSOne == OutsideShapes.cylinder &&
          oSSTwo != OutsideShapes.prism) {
        return false;
      }
    }
    // check cyl
    if (oSSZero == OutsideShapes.cylinder) {
      if (oSSOne == OutsideShapes.cylinder && oSSTwo != OutsideShapes.pyramid) {
        return false;
      } else if (oSSOne == OutsideShapes.pyramid &&
          oSSTwo != OutsideShapes.cylinder) {
        return false;
      } else if (oSSOne == OutsideShapes.prism && oSSTwo != OutsideShapes.cone) {
        return false;
      } else if (oSSOne == OutsideShapes.cone && oSSTwo != OutsideShapes.prism) {
        return false;
      }
    }
    return true;
  }

  bool checkInsideSolveable() {
    if (insideShapeSelections[0] == insideShapeSelections[1]){
      return false;
    } else if (insideShapeSelections[1] == insideShapeSelections[2]) {
      return false;
    } else if (insideShapeSelections[0] == insideShapeSelections[2]) {
      return false;
    }
    return true;
  }

  void solve() {
    solutionList = solutionAlgorithm(insideShapeSelections, outsideShapeSelections);
    for(int sShapeIndex = 0; sShapeIndex<solutionList.length; sShapeIndex++){
      SolutionShapes shape = solutionList[sShapeIndex];
      if (shape == SolutionShapes.triangle){
        solutionImgList[sShapeIndex] = Image.asset('assets/images/Tri.png').image;
      } else if (shape == SolutionShapes.circle){
        solutionImgList[sShapeIndex] = Image.asset('assets/images/Circ.png').image;
      } else if (shape == SolutionShapes.square){
        solutionImgList[sShapeIndex] = Image.asset('assets/images/Squ.png').image;
      } else {
        solutionImgList[sShapeIndex] = Image.asset('assets/images/xray.png').image;
      }
    }
  }

  void setSoVis(){
    SolutionShapes xray = SolutionShapes.xray;
    if(solutionList[0] == xray && solutionList[1] == xray && solutionList[2] == xray){
      soVis[0] = false;
    } else {
      soVis[0] = true;
    }
    if(solutionList[3] == xray && solutionList[4] == xray && solutionList[5] == xray){
      soVis[1] = false;
    } else {
      soVis[1] = true;
    }
    if(solutionList[6] == xray && solutionList[7] == xray && solutionList[8] == xray){
      soVis[2] = false;
    } else {
      soVis[2] = true;
    }
  }
}

class VeritySolver extends StatelessWidget {
  const VeritySolver({super.key});
  @override
  Widget build(BuildContext context) {
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

List<SolutionShapes> solutionAlgorithm(List<InsideShapes> iShapes, List<OutsideShapes> oShapes) {
  List<InsideShapes> oShapesDisassemble = [];
  for (int i = 0; i < oShapes.length; i++) {
    if (oShapes[i] == OutsideShapes.sphere) {
      oShapesDisassemble = oShapesDisassemble + [InsideShapes.circle, InsideShapes.circle];
    } else if (oShapes[i] == OutsideShapes.pyramid) {
      oShapesDisassemble = oShapesDisassemble + [InsideShapes.triangle, InsideShapes.triangle];
    } else if (oShapes[i] == OutsideShapes.cube) {
      oShapesDisassemble = oShapesDisassemble + [InsideShapes.square, InsideShapes.square];
    } else if (oShapes[i] == OutsideShapes.prism) {
      oShapesDisassemble = oShapesDisassemble + [InsideShapes.triangle, InsideShapes.square];
    } else if (oShapes[i] == OutsideShapes.cone) {
      oShapesDisassemble = oShapesDisassemble + [InsideShapes.triangle, InsideShapes.circle];
    } else if (oShapes[i] == OutsideShapes.cylinder) {
      oShapesDisassemble = oShapesDisassemble + [InsideShapes.circle, InsideShapes.square];
    }
  }
  // solution algorithm
  // create solution list and fill with xray objects
  List<SolutionShapes> solved = [];
  for (int i = 0; i < 9; i++) {
    solved = solved + [SolutionShapes.xray];
  }
  //check if solved, if yes, return xray full list
  for (int i = 0; i < iShapes.length; i++) {
    int j = i * 2;
    int k = j + 1;
    //if inside shape matches a compositional shape in any statue
    if (iShapes[i] == oShapesDisassemble[j] || iShapes[i] == oShapesDisassemble[k]) {
      break; //break loop and solve
    } else if (oShapesDisassemble[j] == oShapesDisassemble[k]) {
      //else if compositional shapes for 3d Shape match (ie sphere, pyramid, or cube)
      break; //break loop and solve
    } else if (i >= iShapes.length) {
      // else if loop is complete
      return solved; //puzzle is already solved, return xray only list
    }
  }
  // setup for for loop; create shape list, create index swap list
  List<InsideShapes> needSwap = [];
  List<int> indexNeedSwap = [];
  // for loop to find compositional shapes that match inside shape
  for (int i = 0; i < iShapes.length; i++) {
    int j = i * 2;
    int k = j + 1;
    if (iShapes[i] == oShapesDisassemble[j] && iShapes[i] == oShapesDisassemble[k]) {
      needSwap = needSwap + [oShapesDisassemble[j]] + [oShapesDisassemble[k]];
      indexNeedSwap = indexNeedSwap + [j] + [k];
    } else if (iShapes[i] == oShapesDisassemble[j]) {
      needSwap = needSwap + [oShapesDisassemble[j]];
      indexNeedSwap = indexNeedSwap + [j];
    } else if (iShapes[i] == oShapesDisassemble[k]) {
      needSwap = needSwap + [oShapesDisassemble[k]];
      indexNeedSwap = indexNeedSwap + [k];
    }
  }
  // if compositional shapes all match inside shapes, only 1 solution in 3 or fewer moves will ever exist
  if (needSwap.length == 6) {
    for (int i = 0; i < iShapes.length; i++) {
      if (i == 0) {
        //swap left statue shape to each other statue, then no other action of left required
        solved[0] = toSolvable(iShapes[i]);
        solved[3] = toSolvable(iShapes[i]);
      } else if (i == 1) {
        //swap one center to left, no center action, then one center to right
        solved[1] = toSolvable(iShapes[i]);
        solved[7] = toSolvable(iShapes[i]);
      } else if (i == 2) {
        //no right action, then swap one right shape to left, then one to right
        solved[5] = toSolvable(iShapes[i]);
        solved[8] = toSolvable(iShapes[i]);
        return solved;
      }
    }
  } else if (needSwap.isEmpty) {
    // else if 0 shapes match, 3 doubles exist*
    // *we know this because the previous two checks for compositional arrangement leave only this possiblity
    // only 3 solutions in 2 or fewer moves will ever exist; this presents the solution starting from the left
    InsideShapes firstSwap = oShapesDisassemble[0];
    // if left shapes match center
    if (firstSwap == iShapes[1]) {
      // if left compositional shapes match center
      solved[0] = toSolvable(oShapesDisassemble[0]); //move left shape from left
      solved[1] = toSolvable(oShapesDisassemble[2]); //to center
      solved[4] = toSolvable(oShapesDisassemble[0]); //move shape moved to the center
      solved[5] = toSolvable(oShapesDisassemble[4]); //to right
    } else if (firstSwap == iShapes[2]) {
      // if left compositional shapes match right
      solved[0] = toSolvable(oShapesDisassemble[0]); //move left shape from left
      solved[2] = toSolvable(oShapesDisassemble[4]); //to right
      solved[5] = toSolvable(oShapesDisassemble[0]); //move shape moved to the right
      solved[4] = toSolvable(oShapesDisassemble[2]); //to center
    }
    return solved;
  }

  //further solutions require knowing if sphere, pyramid, or cube exist, and if so, their locations (left,mid,right)
  //setup for loop; create list of placement indexes for compositional shapes
  List<int> disIndexOfDoubles = [];
  for (int i = 0; i < oShapes.length; i++) {
    if (oShapes[i] == OutsideShapes.sphere || oShapes[i] == OutsideShapes.pyramid || oShapes[i] == OutsideShapes.cube) {
      int j = i * 2;
      int k = j + 1;
      disIndexOfDoubles = disIndexOfDoubles + [j] + [k];
    }
  }

  // if all doubles, disIndexOfDoubles length will == 6, the only possibility will be that 2 doubles do not match
  //    the inside shape, but 1 matches the inside shape. Locate the offending shape and swap it's shape twice,
  //    once with each other statue
  if (disIndexOfDoubles.length == 6) {
    for (int i = 0; i < iShapes.length; i++) {
      if (oShapesDisassemble[i * 2] == iShapes[i]) {
        //if current shape is offending shape
        if (i == 0) {
          // if left is offending shape
          solved[0] = toSolvable(iShapes[0]); //  swap offending shape in left
          solved[1] = toSolvable(iShapes[2]); //  with non-matching shape in center
          solved[3] = toSolvable(iShapes[0]); //  swap offending shape in left
          solved[5] = toSolvable(iShapes[1]); //  with non-matching shape in right
        } else if (i == 1) {
          //if center is offending shape
          solved[1] = toSolvable(iShapes[1]); //  swap offending shape in center
          solved[0] = toSolvable(iShapes[2]); //  with non-matching shape in left
          solved[4] = toSolvable(iShapes[1]); //  swap offending shape in center
          solved[5] = toSolvable(iShapes[0]); //  with non-matching shape in right
        } else if (i == 2) {
          //if right is offending shape
          solved[2] = toSolvable(iShapes[2]); //  swap offending shape in right
          solved[0] = toSolvable(iShapes[1]); //  with non-matching shape in left
          solved[5] = toSolvable(iShapes[2]); //  swap offending shape in right
          solved[4] = toSolvable(iShapes[0]); //  with non-matching shape in center
        }
      }
    }
    return solved;
  }

  // only other options are 1 double or 0 doubles. If 1 double, possibilities include
  //    matching or non-matching double compositional and inside shapes. Matching shapes require at least 2 moves,
  //    while non-matching shapes will only ever require 1.
  // starting with matching:
  // if disIndexOfDoubles.length == 2 AND oShapesDisassemble[disIndexOfDoubles[0]] == iShapes[disIndexOfDoubles[0]/2]
  //    shapes match for the double and inside shape.
  int swapId = 0;
  for (int i = 0; i < oShapes.length; i++) {
    if (oShapes[i] == OutsideShapes.sphere || oShapes[i] == OutsideShapes.pyramid || oShapes[i] == OutsideShapes.cube) {
      swapId = i;
      break;
    }
  }
  if (disIndexOfDoubles.length == 2 &&
      oShapesDisassemble[disIndexOfDoubles[0]] == iShapes[swapId]) {
    // if swapID, swap left shape twice, once with each other shape
    if (swapId == 0) {
      // the non-double shapes will always contain 1 shape of their type
      solved[0] = toSolvable(iShapes[0]); // swap inside shape on left
      solved[1] = toSolvable(iShapes[1]); // with inside shape in mid
      solved[3] = toSolvable(iShapes[0]); // swap inside shape on left
      solved[5] = toSolvable(iShapes[2]); // with inside shape on right
    } else if (swapId == 1) {
      // 1045:1012, cl>cr
      solved[1] = toSolvable(iShapes[1]); // swap inside shape on mid
      solved[0] = toSolvable(iShapes[0]); // with inside shape in left
      solved[4] = toSolvable(iShapes[1]); // swap inside shape on mid
      solved[5] = toSolvable(iShapes[2]); // with inside shape on right
    } else if (swapId == 2) {
      // 2054:2021, rl>rc
      solved[2] = toSolvable(iShapes[2]); // swap inside shape on right
      solved[0] = toSolvable(iShapes[0]); // with inside shape in left
      solved[5] = toSolvable(iShapes[2]); // swap inside shape on right
      solved[4] = toSolvable(iShapes[1]); // with inside shape on mid
    }
    return solved;
  } else if (disIndexOfDoubles.length == 2) {
    // else if disIndexOfDoubles.length==2 double shape doesn't match
    if (swapId == 0) {
      // if double is on left
      if (iShapes[1] == oShapesDisassemble[2] ||
          iShapes[1] == oShapesDisassemble[3]) {
        // if non-double that has a single match is on mid
        solved[0] = toSolvable(oShapesDisassemble[disIndexOfDoubles[0]]);
        solved[1] = toSolvable(iShapes[1]);
      } else {
        // if non-double that has a single match is on right
        solved[0] = toSolvable(oShapesDisassemble[disIndexOfDoubles[0]]);
        solved[2] = toSolvable(iShapes[2]);
      }
    } else if (swapId == 1) {
      // if double is on mid
      if (iShapes[0] == oShapesDisassemble[0] ||
          iShapes[0] == oShapesDisassemble[1]) {
        // if non-double that has a single match is on left
        solved[1] = toSolvable(oShapesDisassemble[disIndexOfDoubles[0]]);
        solved[0] = toSolvable(iShapes[0]);
      } else {
        // if non-double that has a single match is on right
        solved[1] = toSolvable(oShapesDisassemble[disIndexOfDoubles[0]]);
        solved[2] = toSolvable(iShapes[2]);
      }
    } else if (swapId == 2) {
      // if double is on right
      if (iShapes[2] == oShapesDisassemble[4] ||
          iShapes[2] == oShapesDisassemble[5]) {
        // if non-double that has a single match is on left
        solved[2] = toSolvable(oShapesDisassemble[disIndexOfDoubles[0]]);
        solved[0] = toSolvable(iShapes[0]);
      } else {
        // if non-double that has a single match is on mid
        solved[2] = toSolvable(oShapesDisassemble[disIndexOfDoubles[0]]);
        solved[1] = toSolvable(iShapes[1]);
      }
    }
    return solved;
  }
  // all remaining options will be non-doubles, solve needSwap.length==3 first
  if (needSwap.length == 3) {
    //pre-loop setup
    InsideShapes swapNot = InsideShapes.triangle;
    //find shape that we aren't swapping that already exists on the left
    if (oShapesDisassemble[0] != iShapes[0]) {
      swapNot = oShapesDisassemble[0];
    } else {
      swapNot = oShapesDisassemble[1];
    }
    int fstIdex = 0;
    int sndIdex = 0;
    //for ishapes length
    for (int i = 0; i < iShapes.length; i++) {
      if (iShapes[i] == swapNot) {
        // if shape is not the shape we're looking for
        sndIdex = i; // store index
      } else if (i != 0) {
        // if shape is not first shape on left and -NOT- swapNot,
        fstIdex = i; // it's the shape we're looking for, store index
      }
    }
    //create solved based on needed swaps
    int sndPlus = sndIdex + 3;
    int fstPlus = fstIdex + 3;
    solved[0] = toSolvable(iShapes[0]); //swap matching shape on left
    solved[fstIdex] = toSolvable(iShapes[fstIdex]); // with the matching shape that is not swapNot
    // this creates a condition where left is solved, and one index has 2 of one of it's necessary shapes
    // follow non-matching double solution, only requires one swap
    solved[fstPlus] = toSolvable(iShapes[0]);
    solved[sndPlus] = toSolvable(iShapes[sndIdex]);
    return solved;
  }

  //only possible option left is non-doubles with only 1 swap required,
  //find the non-matching shapes, create solved with necessary indexes
  //pre-loop setup
  int iOne = -1;
  int iTwo = -1;
  //find match
  for (int i = 0; i < iShapes.length; i++) {
    int j = i * 2;
    if (oShapesDisassemble[j] == iShapes[i] || oShapesDisassemble[j + 1] == iShapes[i]) {
      if (iOne == -1) {
        iOne = i;
      } else {
        iTwo = i;
        break;
      }
    }
  }
  solved[iOne] = toSolvable(iShapes[iOne]);
  solved[iTwo] = toSolvable(iShapes[iTwo]);
  return solved;
}

SolutionShapes toSolvable(InsideShapes iShapeIn) {
  SolutionShapes sShapeOut;
  if (iShapeIn == InsideShapes.triangle) {
    sShapeOut = SolutionShapes.triangle;
  } else if (iShapeIn == InsideShapes.square) {
    sShapeOut = SolutionShapes.square;
  } else if (iShapeIn == InsideShapes.circle) {
    sShapeOut = SolutionShapes.circle;
  } else {
    sShapeOut = SolutionShapes.xray;
  }
  return sShapeOut;
}