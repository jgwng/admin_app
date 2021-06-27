import 'package:adminapp/constants/constants.dart';
import 'package:adminapp/models/recent_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFiles extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Container(
       padding : EdgeInsets.all(defaultPadding),
       decoration: BoxDecoration(
           color : secondaryColor,
           borderRadius : const BorderRadius.all(Radius.circular(10))
       ),
       child : Column(
         children: [
           Text('Recent FIles',style: Theme.of(context).textTheme.subtitle1,),
           SizedBox(
             width: double.infinity,
             child: DataTable(
               horizontalMargin: 0,
               columnSpacing: defaultPadding,
               columns: [
                 DataColumn(label: Text('FIle Name')),
                 DataColumn(label: Text('Date')),
                 DataColumn(label: Text('Size')),
               ],
               rows: List.generate(demoRecentFiles.length,(index)=> recentFileDataRow(demoRecentFiles[index],context)),
             ),
           )],
       )
   );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo,BuildContext context){
  return DataRow(
      cells:[
        DataCell(
            Row(
              children: [
                SvgPicture.asset(
                  fileInfo.icon!,
                  height: 30,
                  width: 30,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                    child : Text(fileInfo.title!,style: Theme.of(context).textTheme.subtitle1,)
                )

              ],
            )

        ),
        DataCell(Text(fileInfo.date!,style: Theme.of(context).textTheme.subtitle2,)),
        DataCell(Text(fileInfo.size!,style: Theme.of(context).textTheme.subtitle2))
      ]
  );
}