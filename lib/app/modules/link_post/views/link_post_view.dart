import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:multi_services/app/theme/all_colors.dart';

import '../controllers/link_post_controller.dart';

class LinkPostView extends GetView<LinkPostController> {
   LinkPostView({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  // Controllers to capture the text input
  final TextEditingController _buttonNameController = TextEditingController();
  final TextEditingController _homePageUrlController = TextEditingController();
  final TextEditingController _secondPageUrlController = TextEditingController();
  final TextEditingController _perClickCostController = TextEditingController();
  final TextEditingController _totalClickController = TextEditingController();

  // Method to validate and submit the form
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Get the values from the controllers
      String buttonName = _buttonNameController.text;
      String homePageUrl = _homePageUrlController.text;
      String secondPageUrl = _secondPageUrlController.text;
      String perClickCost = _perClickCostController.text;
      String totalClick = _totalClickController.text;

      // Perform any action with the values
      print('Button Name: $buttonName');
      print('Home Page Url: $homePageUrl');
      print('Second Page Url: $secondPageUrl');
      print('Per Click Cost: $perClickCost');
      print('Total Click: $totalClick');

      // You can now send this data to an API or perform any further actions
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10,right: 10,top:60,bottom: 10.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20.0),
                decoration: BoxDecoration(
                  color: Color(0xff0A4067),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Limit: ',style: TextStyle(
                            fontSize: 16.0,fontWeight: FontWeight.bold,
                            color: AllColors.whiteColor
                        )),
        
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
                      ]
                    ),
        
                    Row(children: [
                      Text('Total point ',style: TextStyle(
                          fontSize: 16.0,fontWeight: FontWeight.bold,
                          color: AllColors.whiteColor
                      )),
        
                      Image.asset('assets/images/png/work/dollar.png'),
                      Text('100',style: TextStyle(color: AllColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 16.0))
        
                    ])
        
                  ],
                )
              ),
              SizedBox(height: 10),
        
              Form(
                key: _formKey, // Set the form key
                child: Column(
                  children: [
                    // Button Name Field
                    buildTextFieldContainer(
                        'Button Name',
                        _buttonNameController,
                        'Please enter a button name'
                    ),
                    SizedBox(height: 10),
        
                    // Home Page Url Field
                    buildTextFieldContainer(
                        'Home Page Url',
                        _homePageUrlController,
                        'Please enter a valid URL'
                    ),
                    SizedBox(height: 10),
        
                    // Second Page Url Field
                    buildTextFieldContainer(
                        'Second Page Url',
                        _secondPageUrlController,
                        'Please enter a valid URL'
                    ),
                    SizedBox(height: 10),
        
                    // Per Click Cost Field
                    buildTextFieldContainer(
                        'Per Click Cost',
                        _perClickCostController,
                        'Please enter a valid cost'
                    ),
                    SizedBox(height: 10),
        
                    // Total Click Field
                    buildTextFieldContainer(
                        'Total Click',
                        _totalClickController,
                        'Please enter a valid number of clicks'
                    ),
                    SizedBox(height: 10),

                    Container(decoration: BoxDecoration(
                      color: Color(0xFFEAEAEA),
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 1), // Bottom border
                      ),
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 16.0,bottom: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('8989898',style: TextStyle(
                                    fontSize: 16.0,fontWeight: FontWeight.bold,
                                    color: AllColors.blackColor
                                )),
                                SizedBox(width: 5.0),
                                Icon(Icons.copy,size: 14.0),

                              ],
                            ),

                            Row(
                              children: [
                                Text('Change',style: TextStyle(
                                    fontSize: 16.0,fontWeight: FontWeight.bold,
                                    color: AllColors.blackColor
                                )),
                                SizedBox(width: 5.0),
                                Icon(Icons.repeat_on,color: AllColors.secondaryColor)

                              ],
                            )



                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 10.0),

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



        
                     SizedBox(height: 20.0),
                    InkWell(
                      onTap: ()=>_submitForm(),
                      child: Container(
                          width: Get.width,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: AllColors.secondaryColor,
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child:Center(
                            child: Text('Publish',style: TextStyle(
                              color: AllColors.whiteColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            )),
                          )
                      ),
                    ),
                  ],
                ),
              ),
        
        
        
        
            ]
          ),
        ),
      )
    );
  }

  Widget buildTextFieldContainer(String label, TextEditingController controller, String validationMessage) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFEAEAEA),
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 1), // Bottom border
        ),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 10.0,right: 5.0)
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return validationMessage;
          }
          return null; // Return null if the field is valid
        },
      ),
    );
  }


}
