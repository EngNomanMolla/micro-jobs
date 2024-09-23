import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:multi_services/app/theme/all_colors.dart';

import '../controllers/post_live_controller.dart';

class PostLiveView extends GetView<PostLiveController> {
  const PostLiveView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 60, bottom: 10.0),
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
            color: AllColors.primaryColor,
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 8.0, right: 8.0, top: 16.0, bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Total Cost: ',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: AllColors.whiteColor)),
                    Text('000',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF57F17)))
                  ],
                ),
                Row(
                  children: [
                    Text('Total Click: ',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: AllColors.whiteColor)),
                    Text('000',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff09CC80)))
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              padding: EdgeInsets.only(top: 6.0),
              itemCount: 10,
              itemBuilder: (context, index) {
                return _viewWidget(context, index);
              }),
        )
      ]),
    ));
  }

  _viewWidget(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Color(0xffF5F5F5),
          border: Border.all(color: Colors.black.withOpacity(0.1)),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Column(children: [
                Row(
                  children: [
                    Text('Name: ',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5))),
                    Text('Noman',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5))),
                  ],
                ),
                Row(
                  children: [
                    Text('Code: ',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5))),
                    Text('11223344',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5))),
                  ],
                ),
                Row(
                  children: [
                    Text('Date: ',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5))),
                    Text('03/08/2024',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5))),
                  ],
                ),
              ]),
            ),
            Expanded(
                flex: 3,
                child: Column(children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6.0),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.1)),
                      ),
                      height: 25.0,
                      width: 60,
                      child: Center(child: Text('Stop'))),
                  SizedBox(height: 6.0),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6.0),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.1)),
                      ),
                      height: 25.0,
                      width: 60,
                      child: Center(child: Text('Cancel'))),
                ])),
            Expanded(flex: 3, child: Column(children: [

              Text('Live Click', style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.withOpacity(0.7))),

              Text('16.712', style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff00631E)))


            ])),
          ],
        ),
      ),
    );
  }
}
