import 'package:flutter/material.dart';
import 'package:fluttercart_lab/screens/multi_image.dart';
import 'package:fluttercart_lab/screens/multi_selection.dart';
import 'package:fluttercart_lab/screens/toggle_selection.dart';

class Root  extends StatefulWidget {
  const Root ({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
final PageController controller=PageController();
  List<Widget> screen =[
    MultiImage(),
    MultiSelection(),
    ToggleSelection(),
    ];
    int selectscreen=0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
           
          body: PageView(
            controller:controller ,
            children: screen,
            onPageChanged: (v){
              setState(() {
                selectscreen=v;
              });
            },
            
          ),
    bottomNavigationBar:Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            //back
            GestureDetector(
              onTap: () {
                  setState(() {
                  controller.jumpToPage(selectscreen-1);

                  });
  
                },
              child: Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 20),
                
                decoration: BoxDecoration(
                  color: Colors.white
                  
                  ),
                  child: Row(
                    children: [
                    
                        Icon(Icons.arrow_back,color: Colors.black,)
                    ],
                  ),
                  
              ),
            ),
            SizedBox(width: 10,),
            //next
            GestureDetector(
              onTap: (){  
                setState(() {
                  controller.jumpToPage(selectscreen+1);
                });
              },
              child: Container(
              
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 20),
                
                decoration: BoxDecoration(
                  color: Colors.black
                  
                  ),
                  child: Row(
                    children: [
                      Text("next page",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color:  Colors.white),),
                        SizedBox(width: 15,),
                        Icon(Icons.arrow_forward,color: Colors.white,)
                    ],
                  ),
                  
              ),
            ),
           
          ],
        ),
      ),
    ),
    
    );
  }
}