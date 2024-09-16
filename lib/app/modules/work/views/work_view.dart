import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:multi_services/app/theme/all_colors.dart';

import '../controllers/work_controller.dart';

class WorkView extends GetView<WorkController> {
  const WorkView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.only(
              left: 10.0, right: 10.0, top: 40.0, bottom: 5.0),
          child: GetBuilder<WorkController>(
            builder: (_) {
              return Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      decoration: BoxDecoration(
                        color: Color(0xffE0115F),
                        borderRadius: BorderRadius.circular(6.0),
                      ),

                      child: Row(
                        children: [
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(onPressed: (){}, child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text('CLICK HERE',style: TextStyle(
                                  color: AllColors.whiteColor
                                )),
                              ),
                              style: TextButton.styleFrom(
                                minimumSize: Size(0, 0),
                                padding: EdgeInsets.only(top: 0.0,bottom: 0.0),
                                backgroundColor: Color(0xff23A26D),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6.0)))
                              ),
                              ),

                              Text('0/5',style: TextStyle(color: AllColors.whiteColor,fontSize: 18.0,fontWeight: FontWeight.bold))

                            ]
                          )),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [

                              Text('VIP',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: AllColors.whiteColor)),
                              SizedBox(width: 20.0),
                              SizedBox(
                                width: 65,
                                child: Row(
                                  children: [
                                    Image.asset('assets/images/png/work/dollar.png'),
                                    Text('100',style: TextStyle(color: AllColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 20.0))
                                  ]
                                )
                              )

                            ]


                          )),
                        ],
                      ) ,
                    ),
                    SizedBox(height: 10.0),

                    Container(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      decoration: BoxDecoration(
                        color: Color(0xffE0115F),
                        borderRadius: BorderRadius.circular(6.0),
                      ),

                      child: Row(
                        children: [

                          Expanded(child: Column(
                            children: [
                              Row(children: [ TextButton(onPressed: (){}, child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text('CLICK HERE',style: TextStyle(
                                    color: AllColors.whiteColor
                                )),
                              ),
                                style: TextButton.styleFrom(
                                    minimumSize: Size(0, 0),
                                    padding: EdgeInsets.only(top: 0.0,bottom: 0.0),
                                    backgroundColor: Color(0xff23A26D),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6.0)))
                                ),
                              ),

                                SizedBox(width: 15.0),

                                TextButton(onPressed: (){}, child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text('8-Digit Code',style: TextStyle(
                                      color: AllColors.whiteColor
                                  )),
                                ),
                                  style: TextButton.styleFrom(
                                      minimumSize: Size(0, 0),
                                      padding: EdgeInsets.only(top: 0.0,bottom: 0.0),
                                      backgroundColor: Color(0xffC9C9C9),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6.0)))
                                  ),
                                ),

                              ]),


                              Row(
                                children: [
                                  TextButton(onPressed: (){}, child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 6.0,bottom: 6.0),
                                    child: Text('Paste',style: TextStyle(
                                        color: AllColors.blackColor
                                    )),
                                  ),
                                    style: TextButton.styleFrom(
                                        minimumSize: Size(0, 0),
                                        padding: EdgeInsets.only(top: 0.0,bottom: 0.0),
                                        backgroundColor: Color(0xffC9C9C9),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6.0)))
                                    ),
                                  ),

                                  SizedBox(width: 15.0),

                                  TextButton(onPressed: (){}, child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 6.0,bottom: 6.0),
                                    child: Text('SUBMIT',style: TextStyle(
                                        color: AllColors.whiteColor
                                    )),
                                  ),
                                    style: TextButton.styleFrom(
                                        minimumSize: Size(0, 0),
                                        padding: EdgeInsets.only(top: 0.0,bottom: 0.0),
                                        backgroundColor: Color(0xff00631E),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6.0)))
                                    ),
                                  ),


                                ]
                              ),



                            ]
                          )),

                          SizedBox(
                              width: 65,
                              child: Row(
                                  children: [
                                    Image.asset('assets/images/png/work/dollar.png'),
                                    Text('100',style: TextStyle(color: AllColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 20.0))
                                  ]
                              )
                          )

                        ],
                      ) ,
                    ),

                    SizedBox(height: 20.0),


                    Container(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                      decoration: BoxDecoration(
                        color: Color(0xff0A4067),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text('Task Done',style: TextStyle(
                                      fontSize: 16.0,fontWeight: FontWeight.bold,
                                      color: AllColors.whiteColor.withOpacity(0.7)
                                    )),
                                    Row(
                                      children: [
                                        Text('9',style: TextStyle(
                                            fontSize: 16.0,fontWeight: FontWeight.bold,
                                            color: Color(0xffF57F17)
                                        )),

                                        Text('/',style: TextStyle(
                                            fontSize: 16.0,fontWeight: FontWeight.bold,
                                            color: AllColors.whiteColor
                                        )),

                                        Text('30',style: TextStyle(
                                            fontSize: 16.0,fontWeight: FontWeight.bold,
                                            color: AllColors.whiteColor
                                        )),
                                      ],
                                    )
                                  ],
                                ),




                              ],
                            ) ,
                          ),

                          Expanded(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text('Time',style: TextStyle(
                                        fontSize: 16.0,fontWeight: FontWeight.bold,
                                        color: AllColors.whiteColor.withOpacity(0.7)
                                    )),
                                    Text('18:17 pm',style: TextStyle(
                                        fontSize: 16.0,fontWeight: FontWeight.bold,
                                        color: AllColors.whiteColor
                                    ))
                                  ],
                                ),

                              ],
                            ) ,
                          ),


                          Expanded(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text('Earn Coin',style: TextStyle(
                                        fontSize: 16.0,fontWeight: FontWeight.bold,
                                        color: AllColors.whiteColor.withOpacity(0.7)
                                    )),
                                    Text('0000',style: TextStyle(
                                        fontSize: 16.0,fontWeight: FontWeight.bold,
                                        color: AllColors.whiteColor
                                    ))
                                  ],
                                ),

                              ],
                            ) ,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10.0),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context,index)=>_widgetView(context,index)),
                    )


                  ]
              );
            },
          ),
        )
    );
  }

  _widgetView(BuildContext context, int index) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Container(
        padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
        decoration: BoxDecoration(
          color: Color(0xff0A4067),
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Row(
          children: [
            Expanded(child: Column(
              children: [
                Row(children: []),
                Row(children: [])
              ],
            )),

            Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Noman',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: AllColors.whiteColor
                )),

                TextButton(onPressed: (){}, child: Padding(
                  padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 6.0,bottom: 6.0),
                  child: Text('Click Here',style: TextStyle(
                      color: AllColors.whiteColor
                  )),
                ),
                  style: TextButton.styleFrom(
                      minimumSize: Size(0, 0),
                      padding: EdgeInsets.only(top: 0.0,bottom: 0.0),
                      backgroundColor: Color(0xff00631E),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6.0)))
                  ),
                ),



              ]
            )),

            Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

              SizedBox(
                  width: 65,
                  child: Row(
                      children: [
                        Image.asset('assets/images/png/work/dollar.png'),
                        Text('100',style: TextStyle(color: AllColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 18.0))
                      ]
                  )
              ),


              TextButton(onPressed: (){}, child: Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 6.0,bottom: 6.0),
                child: Text('Report',style: TextStyle(
                    color: AllColors.whiteColor
                )),
              ),
                style: TextButton.styleFrom(
                    minimumSize: Size(0, 0),
                    padding: EdgeInsets.only(top: 0.0,bottom: 0.0),
                    backgroundColor: Color(0xffF57F17),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6.0)))
                ),
              ),



            ]))

          ],
        ),
      ),
    );


  }
}
