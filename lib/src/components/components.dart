import 'package:flutter/material.dart';

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