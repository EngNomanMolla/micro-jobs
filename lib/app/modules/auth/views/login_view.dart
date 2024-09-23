import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_services/app/routes/app_pages.dart';
import 'package:multi_services/app/theme/all_colors.dart';
import 'package:multi_services/app/theme/all_styles.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool showPassword = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AllColors.transparentColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 14.0, right: 14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hi, Welcome Back! 👋',
                  style: AllStyles.headingBoldBlackTextStyles),
              Text('Binex', style: AllStyles.headingBoldBlackTextStyles),
              SizedBox(height: 40.0),
              Text('Email',
                  style: TextStyle(fontSize: 14.0, color: Color(0xff695C5C))),
              SizedBox(height: 10.0),
              Container(
                color: Color(0xff09CC800D),
                height: 45.0,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 10.0, left: 10.0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColors.secondaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColors.secondaryColor),
                    ),
                    hintStyle: TextStyle(color: AllColors.blackColor.withOpacity(0.5)),

                    hintText: 'Enter your email address',
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text('Password',
                  style: TextStyle(fontSize: 14.0, color: Color(0xff695C5C))),
              SizedBox(height: 10.0),
              Container(
                color: Color(0xff09CC800D),
                height: 45.0,
                child: TextField(
                  obscureText: !showPassword,
                  controller: passwordController,
                  decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.only(bottom: 13.0, left: 10.0, right: 10.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColors.secondaryColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColors.secondaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColors.secondaryColor),
                    ),
                    hintStyle: TextStyle(color: AllColors.blackColor.withOpacity(0.5)),
                    hintText: 'Enter your password',
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      child: showPassword
                          ? Icon(Icons.visibility,
                          color: AllColors.blackColor)
                          : Icon(Icons.visibility_off,
                          color: AllColors.blackColor),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: Get.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          visualDensity: VisualDensity(horizontal: -4.0),
                          activeColor: AllColors.secondaryColor,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value ?? false;
                            });
                          },
                        ),
                        Text('Remember me',
                            style:
                            TextStyle(color: Colors.black, fontSize: 16.0)),
                      ],
                    ),
                    Text('Forgot Password',
                        style: TextStyle(
                            color: Colors.redAccent, fontSize: 16.0)),
                  ],
                ),
              ),
              SizedBox(height: 30.0),

              InkWell(
                onTap: ()=>Get.toNamed(Routes.BOTTOM_NAV_BAR),
                child: Container(
                  width: Get.width,
                  height: 37.0,
                  decoration: BoxDecoration(
                    color: AllColors.secondaryColor,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                    child:Center(
                      child: Text('Login',style: TextStyle(
                        color: AllColors.whiteColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      )),
                    )
                ),
              ),

              SizedBox(height: 30.0),
              
              Row(children: [
               Text('Don’t have an account ?',style: TextStyle(
                 fontSize: 16.0,
                 color: AllColors.blackColor.withOpacity(0.7),
               )),
                SizedBox(width: 5.0),
                GestureDetector(
                  onTap: ()=>Get.toNamed(Routes.REGISTER),
                  child: Text('Sign Up',style: TextStyle(
                    color: AllColors.primaryColor,
                    fontSize: 16.0,
                  ),),
                )
                
              ])

            ],
          ),
        ),
      ),
    );
  }
}
