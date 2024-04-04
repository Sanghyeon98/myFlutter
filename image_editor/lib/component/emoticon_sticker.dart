import 'package:flutter/material.dart';

class EmoticonSticker extends StatefulWidget {
  final VoidCallback onTransform;
  final String imgPath;
  final bool isSelected;

  const EmoticonSticker({
    required this.onTransform,
    required this.imgPath,
    Key? key, required this.isSelected,
}) : super(key: key);

  @override
  State<EmoticonSticker> createState() => _EmoticonStickerState();
}

class _EmoticonStickerState extends State<EmoticonSticker> {
  double scale =1;
  double hTransform =0;
  double vTransform =0;
  double actualSacle =1;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
      ..translate(hTransform,vTransform)
      ..scale(scale,scale),
      child :Container(
      decoration: widget.isSelected ? BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(color: Colors.blue, width: 1.0,),
      ) : BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: Colors.transparent,
        ),
      ),
      child : GestureDetector(
      onTap: (){
        widget.onTransform();
      },
      onScaleUpdate: (ScaleUpdateDetails details){
        widget.onTransform();
        setState((){
          scale =details.scale* actualSacle;
          vTransform += details.focalPointDelta.dy;
          hTransform += details.focalPointDelta.dx;
        });
      },
      onScaleEnd: (ScaleEndDetails details){
        actualSacle =scale;
      },
        child : Image.asset(
          widget.imgPath,
          ),
        ),
      ),
    );
  }
}
