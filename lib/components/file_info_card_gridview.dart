import 'package:adminapp/components/file_info_card.dart';
import 'package:adminapp/constants/constants.dart';
import 'package:adminapp/models/my_files.dart';
import 'package:flutter/material.dart';

class FileInfoCardGridView extends StatelessWidget{
  FileInfoCardGridView({ this.crossAxisCount : 4, this.childAspectRatio : 1.4});
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
        itemCount: 4,
        shrinkWrap:  true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,crossAxisSpacing: defaultPadding,
            childAspectRatio: childAspectRatio),
        itemBuilder : (context,index) =>
        FileInfoCard(info :demoMyFiles[index] ));
  }

}