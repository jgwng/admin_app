import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerListTile extends StatelessWidget{
  DrawerListTile({required this.title,required this.svgSrc,
    required this.press});
  final String title,svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context){
    return ListTile(
      onTap: (){},
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(title),
    );
  }










}