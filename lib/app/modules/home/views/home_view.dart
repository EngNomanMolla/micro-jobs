import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:multi_services/app/routes/app_pages.dart';
import 'package:multi_services/app/theme/all_colors.dart';
import 'package:multi_services/app/theme/all_styles.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Container(
          padding:EdgeInsets.only(left: 10.0,right: 10.0,top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                flex:3,
                                child: Container(
                                  child: Column(

                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                       child: Image.asset('assets/images/png/home/profile.png',height: 45,width: 45,fit: BoxFit.cover),
                                       // child: SvgPicture.asset('assets/images/svg/home/profile.svg'),
                                      ),
                                      SizedBox(height: 4.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                        Text('Status',style: TextStyle(
                                            color:  Color(0xff00631E),
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                        SizedBox(width: 5.0),
                                        //Image.asset('assets/images/png/home/check_circle.png',height: 50.0,width: 50.0)
                                          Icon(Icons.circle_rounded,color:Color(0xff00631E),size: 10.0)
                                      ]),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('LVL.',style: TextStyle(
                                            color:  AllColors.blackColor,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                          SizedBox(width: 5.0),

                                          Text('10',style: TextStyle(
                                            color: AllColors.blackColor,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          )),

                                        ],),


                                    ],
                                  ),
                                )),
                            SizedBox(width: 4.0),

                            Expanded(
                                flex:5,
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Row(children: [
                                       Text('Farabi Hasan',style: AllStyles.headingBoldBlackTextStyles),
                                       // SvgPicture.asset('assets/images/svg/home/verify.svg',height: 50.0,width: 50.0)
                                      ]),
                                      Row(
                                        children: [
                                           Text('ID:',style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             color: AllColors.blackColor,
                                             fontSize: 18.0,
                                           )),

                                          Text('65738394',style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AllColors.blackColor,
                                            fontSize: 18.0,
                                          )),
                                          SizedBox(width: 4.0),
                                          Icon(Icons.copy,size: 16.0)
                                        ]
                                      ),

                                    ],
                                  ),
                                )),

                            Expanded(
                                flex:3,
                                child: Container(
                                  padding: EdgeInsets.only(top: 5.0),
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    border: Border.all(
                                      color: AllColors.blackColor.withOpacity(0.5)
                                    )
                                  ),
                                   child:Column(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     crossAxisAlignment: CrossAxisAlignment.center,

                                     children: [
                                       Text('৳' +'1898.0',style: TextStyle(
                                         fontSize: 14.0,
                                         color: AllColors.secondaryColor,
                                         fontWeight: FontWeight.bold
                                       )),


                                       Text('Balance',style: TextStyle(
                                           fontSize: 16.0,
                                           color: AllColors.blackColor.withOpacity(0.7),
                                           fontWeight: FontWeight.bold
                                       ),)
                                     ]
                                   ) ,
                                ))
                          ],
                        ),
                        SizedBox(height: 10.0),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Image.asset('assets/images/png/home/add.png'),
                                Text('Add'),
                              ],
                            ),


                            Column(
                              children: [
                                Image.asset('assets/images/png/home/withdraw.png'),
                                Text('Withdraw'),
                              ],
                            ),


                            Column(
                              children: [
                                Image.asset('assets/images/png/home/send.png'),
                                Text('Send'),
                              ],
                            ),


                            Column(
                              children: [
                                Image.asset('assets/images/png/home/history.png'),
                                Text('History'),
                              ],
                            ),


                            Container(
                              padding: EdgeInsets.only(top: 5.0),
                              height: 60,
                              width: 80.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  border: Border.all(
                                      color: AllColors.blackColor.withOpacity(0.5)
                                  )
                              ),
                              child:Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    Text('৳' +'1898.0',style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold
                                    )),


                                    Text('Coin',style: TextStyle(
                                        fontSize: 16.0,
                                        color: AllColors.blackColor.withOpacity(0.7),
                                        fontWeight: FontWeight.bold
                                    ),)
                                  ]
                              ) ,
                            )

                          ],
                        )


                      ],
                    ),
                  ),
                ),
              ),

              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                mainAxisSpacing: 3.0,
                crossAxisSpacing: 3.0,
                childAspectRatio: 0.8,

                children: <Widget>[
                  
                  Column(children: [
                    
                    GestureDetector(
                        onTap: ()=>Get.toNamed(Routes.WORK),
                        child: Image.asset('assets/images/png/home/work.png',height: 50.0,width: 50.0)),
                    Text('Work Job')
                    
                  ]),

                  Column(children: [

                    GestureDetector(
                        onTap: ()=>Get.toNamed(Routes.LINK_POST),
                        child: Image.asset('assets/images/png/home/link_post.png',height: 50.0,width: 50.0)),
                    Text('Link Post')

                  ]),

                  Column(children: [

                    Image.asset('assets/images/png/home/post_status.png',height: 50.0,width: 50.0),
                    Text('Post Status')

                  ]),

                  Column(children: [

                    InkWell(
                        onTap: ()=>Get.toNamed(Routes.POST_LIVE),
                        child: Image.asset('assets/images/png/home/work.png',height: 50.0,width: 50.0)),
                    Text('Post Live')

                  ]),


                  Column(children: [

                    Image.asset('assets/images/png/home/complete.png',height: 50.0,width: 50.0),
                    Text('Complete')

                  ]),


                  Column(children: [

                    Image.asset('assets/images/png/home/reporting.png',height: 50.0,width: 50.0),
                    Text('Reporting')

                  ]),


                  Column(children: [

                    Image.asset('assets/images/png/home/account_status.png',height: 50.0,width: 50.0),
                    Text('Account Status',style: TextStyle(
                      overflow: TextOverflow.ellipsis
                    ),)

                  ]),


                  Column(children: [

                    Image.asset('assets/images/png/home/top_lvl_user.png',height: 50.0,width: 50.0),
                    Text('Top User LVL',style: TextStyle(
                        overflow: TextOverflow.ellipsis
                    ),)

                  ]),



                  Column(children: [

                    Image.asset('assets/images/png/home/guide.png',height: 50.0,width: 50.0),
                    Text('Guide',style: TextStyle(
                        overflow: TextOverflow.ellipsis
                    ),)

                  ]),


                  Column(children: [

                    Image.asset('assets/images/png/home/join_telegram.png',height: 50.0,width: 50.0),
                    Text('Join Telegram',style: TextStyle(
                        overflow: TextOverflow.ellipsis
                    ),)

                  ]),

                  Column(children: [

                    Image.asset('assets/images/png/home/facebook.png',height: 50.0,width: 50.0),
                    Text('Join Facebook',style: TextStyle(
                        overflow: TextOverflow.ellipsis
                    ),)

                  ]),


                  Column(children: [

                    Image.asset('assets/images/png/home/live_chat.png',height: 50.0,width: 50.0),
                    Text('Live Chat',style: TextStyle(
                        overflow: TextOverflow.ellipsis
                    ),)

                  ]),

                ],
              )

            ],
          ),
        ),
      )
    );
  }
}
