// // ignore_for_file: avoid_print, avoid_unnecessary_containers, library_private_types_in_public_api

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SignupScreen extends StatefulWidget {
//   @override
//   _SignupScreenState createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   TextEditingController nameCtr = TextEditingController();
//   TextEditingController emailCtr = TextEditingController();
//   TextEditingController phnCtr = TextEditingController();
//   TextEditingController shopnameCtr = TextEditingController();
//   TextEditingController addressCtr = TextEditingController();
//   TextEditingController areaCtr = TextEditingController();
//   TextEditingController passCtr = TextEditingController();
//   TextEditingController conpassCtr = TextEditingController();
//   TextEditingController deviceCtr = TextEditingController();

//   FocusNode nameFcs = FocusNode();
//   FocusNode emailFcs = FocusNode();
//   FocusNode phnFcs = FocusNode();
//   FocusNode shopnameFcs = FocusNode();
//   FocusNode addressFcs = FocusNode();
//   FocusNode areaFcs = FocusNode();
//   FocusNode passFcs = FocusNode();
//   FocusNode conpassFcs = FocusNode();
//   FocusNode deviceFcs = FocusNode();

//   String? selectedArea;

//   // @override
//   // void initState() {
//   //   WidgetsBinding.instance
//   //       .addPostFrameCallback((_) => Get.find<AuthController>().areaList());
//   //   super.initState();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<AuthController>(builder: (controller) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text("Sign Up"),
//           backgroundColor: Theme.of(context).primaryColor,
//         ),
//         body: ProgressHUD(
//           inAsyncCall: controller.isLoading,
//           child: Padding(
//             padding: EdgeInsets.all(10),
//             child: ListView(
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(10),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Container(
//                         child: Text(
//                           "Sign Up",
//                           style: TextStyle(
//                               fontSize: 25,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       CustomTextFieldMaterial(
//                         hintText: 'Full Name',
//                         controller: nameCtr,
//                         focusNode: nameFcs,
//                         nextFocus: emailFcs,
//                         // inputType: TextInputType.phone,
//                         lebelText: 'Full Name',
//                         isPassword: false,
//                         divider: false,
//                         onSubmit: () {},
//                         // title: 'Company Name',
//                         /* onSubmit: (text) => (GetPlatform.isWeb && authController.acceptTerms)
//                                     ? _login(authController, _countryDialCode) : null,*/
//                       ),
//                       SizedBox(height: 10),
//                       CustomTextFieldMaterial(
//                         hintText: 'example@gmail.com',
//                         controller: emailCtr,
//                         focusNode: emailFcs,
//                         nextFocus: phnFcs,
//                         // inputType: TextInputType.phone,
//                         lebelText: 'Email',
//                         isPassword: false,
//                         divider: false,
//                         onSubmit: () {},
//                         // title: 'Email',
//                         /* onSubmit: (text) => (GetPlatform.isWeb && authController.acceptTerms)
//                                     ? _login(authController, _countryDialCode) : null,*/
//                       ),
//                       SizedBox(height: 10),
//                       CustomTextFieldMaterial(
//                         hintText: '+88017-xxxxxxxx',
//                         controller: phnCtr,
//                         focusNode: phnFcs,
//                         nextFocus: shopnameFcs,
//                         // inputType: TextInputType.phone,
//                         lebelText: 'Phone Number',
//                         isPassword: false,
//                         divider: false,
//                         onSubmit: () {},
//                         // title: 'Phone number',
//                         /* onSubmit: (text) => (GetPlatform.isWeb && authController.acceptTerms)
//                                     ? _login(authController, _countryDialCode) : null,*/
//                       ),
//                       SizedBox(height: 10),
//                       CustomTextFieldMaterial(
//                         hintText: 'Shop Name',
//                         controller: shopnameCtr,
//                         focusNode: shopnameFcs,
//                         nextFocus: addressFcs,
//                         // inputType: TextInputType.phone,
//                         lebelText: 'Shop Name',
//                         isPassword: false,
//                         divider: false,
//                         onSubmit: () {},
//                         // title: 'Phone number',
//                         /* onSubmit: (text) => (GetPlatform.isWeb && authController.acceptTerms)
//                                     ? _login(authController, _countryDialCode) : null,*/
//                       ),
//                       SizedBox(height: 10),
//                       CustomTextFieldMaterial(
//                         hintText: 'Shop Address',
//                         controller: addressCtr,
//                         focusNode: addressFcs,
//                         nextFocus: areaFcs,
//                         // inputType: TextInputType.phone,
//                         lebelText: 'Address',
//                         isPassword: false,
//                         divider: false,
//                         onSubmit: () {},
//                         // title: 'Phone number',
//                         /* onSubmit: (text) => (GetPlatform.isWeb && authController.acceptTerms)
//                                     ? _login(authController, _countryDialCode) : null,*/
//                       ),
//                       SizedBox(height: 10),
//                       CustomRealDropDownWithOutTitle(
//                         height: 47,
//                         dataArray: controller.area!,
//                         // isRequired: true,
//                         seletcedValue: selectedArea,
//                         selecetTap: (value) {
//                           setState(() {
//                             print(controller.area!.indexOf(value));
//                             selectedArea = value;
//                           });
//                         },
//                         hint: '--select--',
//                       ),
//                       SizedBox(height: 10),
//                       CustomTextFieldMaterial(
//                         hintText: 'Password',
//                         controller: passCtr,
//                         focusNode: passFcs,
//                         nextFocus: conpassFcs,
//                         // inputType: TextInputType.phone,
//                         lebelText: 'Password',
//                         isPassword: false,
//                         divider: false,
//                         onSubmit: () {},
//                         // title: 'Password',
//                         /* onSubmit: (text) => (GetPlatform.isWeb && authController.acceptTerms)
//                                     ? _login(authController, _countryDialCode) : null,*/
//                       ),
//                       SizedBox(height: 10),
//                       CustomTextFieldMaterial(
//                         hintText: 'Confirm Password',
//                         controller: conpassCtr,
//                         focusNode: conpassFcs,
//                         nextFocus: addressFcs,
//                         // inputType: TextInputType.phone,
//                         lebelText: 'Confirm Password',
//                         isPassword: false,
//                         divider: false,
//                         onSubmit: () {},
//                         // title: 'Company Name',
//                         /* onSubmit: (text) => (GetPlatform.isWeb && authController.acceptTerms)
//                                     ? _login(authController, _countryDialCode) : null,*/
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 25),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
//                   child: !controller.isLoadingbtn
//                       ? CustomButton(
//                           buttontextColor: Colors.white,
//                           buttonText: 'Register'.toUpperCase(),
//                           onPressed: () => {registerValidation(controller)},
//                           color: Colors.green,
//                         )
//                       : Center(child: CircularProgressIndicator()),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(left: 10, right: 4, top: 20),
//                           child: GestureDetector(
//                             onTap: () => {},
//                             child: Text(
//                               "Already have an account?",
//                               style: TextStyle(color: Colors.black),
//                               textAlign: TextAlign.right,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                           border: Border(
//                               bottom: BorderSide(
//                         color: greenlike,
//                       ))),
//                       margin: EdgeInsets.only(top: 20),
//                       child: GestureDetector(
//                         onTap: () =>
//                             {Get.to(() => SignInScreen(exitFromApp: false))},
//                         child: Text(
//                           "Sign in Instead",
//                           style: TextStyle(
//                             // color: Colors.green,
//                             color: greenlike,
//                             // decoration: TextDecoration.underline
//                           ),
//                           textAlign: TextAlign.right,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//                 SizedBox(height: 30),
//               ],
//             ),
//           ),
//         ),
//       );
//     });
//   }

//   void registerValidation(AuthController controller) {
//     if (nameCtr.text.toString().isNotEmpty) {
//       if (emailCtr.text.toString().isNotEmpty) {
//         if (phnCtr.text.toString().isNotEmpty) {
//           if (shopnameCtr.text.toString().isNotEmpty) {
//             if (addressCtr.text.toString().isNotEmpty) {
//               if (selectedArea != null) {
//                 if (passCtr.text.toString().isNotEmpty) {
//                   if (conpassCtr.text.toString().isNotEmpty) {
//                     if (passCtr.text == conpassCtr.text) {
//                       /// ***** main code
//                       // controller.getRegistration(
//                       //   name: nameCtr.text,
//                       //   email: emailCtr.text,
//                       //   mobile_no: phnCtr.text,
//                       //   shop_name: shopnameCtr.text,
//                       //   address: addressCtr.text,
//                       //   // area_id: areaCtr.text,
//                       //   area_id: controller.areaResponse!
//                       //       .data![controller.area!.indexOf(selectedArea!)].id
//                       //       .toString(),
//                       //   password: passCtr.text,
//                       //   c_password: conpassCtr.text,
//                       // );
//                     } else {
//                       showCustomSnackBar("Your Confirm Password doesn't Match",
//                           isPosition: true);
//                     }
//                   } else {
//                     showCustomSnackBar("Please Enter Your Confirm Password",
//                         isPosition: true);
//                   }
//                 } else {
//                   showCustomSnackBar("Please Enter Your Password",
//                       isPosition: true);
//                 }
//               } else {
//                 showCustomSnackBar("Please Enter Your Area", isPosition: true);
//               }
//             } else {
//               showCustomSnackBar("Please Enter Shop Address", isPosition: true);
//             }
//           } else {
//             showCustomSnackBar("Please Enter Shop Name", isPosition: true);
//           }
//         } else {
//           showCustomSnackBar("Please Enter Mobile Number", isPosition: true);
//         }
//       } else {
//         showCustomSnackBar("Please Enter Email", isPosition: true);
//       }
//     } else {
//       showCustomSnackBar("Please Enter Full Name", isPosition: true);
//     }
//   }
// }

// /*!authController.isLoading ?CustomButton(
// width: Get.width*0.50,
// buttonText: 'Log in',
// onPressed: ()=>{
// authController.loginVerification(),
// //Get.to(() => SalesOfficerHomeScreen())
// },
// //  onPressed: authController.acceptTerms ? () => _register(authController, _countryDialCode) : null,
// ):Center(child: CircularProgressIndicator()),*/
