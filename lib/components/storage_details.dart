import 'package:adminapp/constants/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StorageDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      height: 500,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Text('Storage Details',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
          SizedBox(height: defaultPadding,),
          //PieChart
          SizedBox(
              height : 200,
              child : Stack(
                children: [
                  PieChart(
                      PieChartData(
                          sectionsSpace: 0,
                          centerSpaceRadius: 70,
                          startDegreeOffset: -90,
                          sections: [
                            PieChartSectionData(color: primaryColor,value : 25,showTitle: false,radius: 25),
                            PieChartSectionData(color: Color(0xFF26E5FF),value : 20,showTitle: false,radius: 25),
                            PieChartSectionData(color: Color(0xFFFFCF26),value : 10,showTitle: false,radius: 25),
                            PieChartSectionData(color: Color(0xFFEE2727),value : 15,showTitle: false,radius: 25),
                            PieChartSectionData(color:primaryColor.withOpacity(0.1),value : 15,showTitle: false,radius: 25),

                          ]
                      )
                  ),
                  Positioned.fill(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('29.1',style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white,fontWeight: FontWeight.w600),),
                        Text('of 128GB'),
                      ],
                    ),
                  )
                ],
              )
          ),
          //StorageInfoCard - 5개 정도 추가하기
          Container(
            padding : EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
                border : Border.all(
                    width: 2,color: primaryColor.withOpacity(0.15)),
                borderRadius  : const BorderRadius.all(
                  Radius.circular(defaultPadding),
                )
            ),
            child : Row(
              children: [
                SizedBox(
                  height :20,
                  width: 20,
                  child: Image.asset(''),
                ),
                Expanded(
                  child:
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      child : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Document FIles',maxLines: 1,overflow: TextOverflow.ellipsis,),
                          Text('1329 Files',style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.white70),)
                        ],
                      )
                  ),),
                Text('1.3GB')
              ],
            ),
          )
        ],
      ),

    );
  }

}