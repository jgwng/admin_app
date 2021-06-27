import 'package:adminapp/resposive.dart';
import 'package:adminapp/screens/main_screen/side_tab.dart';
import 'package:flutter/material.dart';
import 'package:adminapp/dashboard_screen.dart';
class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context))
            Expanded(child: SideTab(),),
            Expanded(
              flex: 5,
              child: DashBoardScreen(),
            )
          ],
        ),
      ),
    );
  }
}

