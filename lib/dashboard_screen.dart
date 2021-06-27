import 'package:adminapp/components/header.dart';
import 'package:adminapp/components/my_files.dart';
import 'package:adminapp/components/recent_files.dart';
import 'package:adminapp/components/storage_details.dart';
import 'package:adminapp/constants/constants.dart';
import 'package:adminapp/resposive.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: SingleChildScrollView(
        padding :  EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
           Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children :[
                      MyFiles(),
                      SizedBox(height: defaultPadding ,),
                      RecentFiles(),
                      if(Responsive.isMobile(context))
                      SizedBox(height: defaultPadding,),
                      if(Responsive.isMobile(context))
                        StorageDetails(),
                    ]
                  ),
                ),
                if(!Responsive.isMobile(context))
                SizedBox(width: defaultPadding,),
                if(!Responsive.isMobile(context))
                Expanded(
                  flex: 2,
                  child: StorageDetails(),
                )

              ],)
          ],
        ),
      )
    );
  }

}