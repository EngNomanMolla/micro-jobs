import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:multi_services/app/theme/all_colors.dart';

import '../controllers/post_live_controller.dart';

class PostLiveView extends GetView<PostLiveController> {
  const PostLiveView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 10,right: 10,top:60,bottom: 10.0),
        child: Column(
          children: [
            Container(decoration: BoxDecoration(
              color: AllColors.primaryColor,
              borderRadius: BorderRadius.circular(6.0),

            ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 16.0,bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Total Cost: ',style: TextStyle(
                            fontSize: 16.0,fontWeight: FontWeight.bold,
                            color: AllColors.whiteColor
                        )),

                        Text('000',style: TextStyle(
                            fontSize: 16.0,fontWeight: FontWeight.bold,
                            color: Color(0xffF57F17)
                        ))

                      ],
                    ),

                    Row(
                      children: [
                        Text('Total Click: ',style: TextStyle(
                            fontSize: 16.0,fontWeight: FontWeight.bold,
                            color: AllColors.whiteColor
                        )),

                        Text('000',style: TextStyle(
                            fontSize: 16.0,fontWeight: FontWeight.bold,
                            color: Color(0xff09CC80)
                        ))

                      ],
                    )



                  ],
                ),
              ),
            ),


            ListView.builder(
                shrinkWrap: true,
                itemCount:10 ,
                itemBuilder: (context,index){
                  return _viewWidget(context,index);
                })


          ]
        ),
      )
    );
  }

  _viewWidget(BuildContext context, int index){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Color(0xffF5F5F5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Column(children: [

          ])),
          Expanded(child: Column(children: [])),
          Expanded(child: Column(children: [])),
        ],
      ),
    );
  }

}
