import 'package:delivery_app/core/button.dart';
import 'package:delivery_app/presentation/views/screen/signIn.dart';
import 'package:flutter/material.dart';

import '../../../core/text_field_input.dart';

class ForgotPwd extends StatefulWidget {
  const ForgotPwd({Key? key}) : super(key: key);

  @override
  State<ForgotPwd> createState() => _ForgotPwdState();
}

class _ForgotPwdState extends State<ForgotPwd> {
  final TextEditingController _phoneController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool showPassword = true;
  bool loading = false;
  bool passwordsMatch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    const SizedBox(
                    height: 30,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Image.asset(
                      'assets/logo/logo_vert.png',
                      height: 50,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10, right: 40, ),
                    child: const Text(
                      'Forgot Password',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Enter your phone number we send the OTP for verification',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFieldInput(
                    fontWeight: FontWeight.w300,
                    iconData: Icons.phone,
                    controller: _phoneController,
                    label: "Phone",
                    hint: "enter your phone number",
                    coloricons: Colors.black26,
                    validator: (value) {
                      if (value == "") {
                        return "veuiller inserer votre phone number";
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  
                  const SizedBox(height: 24,),
                  ButtonN(
                    textColor: Colors.white,
                    color: const Color(0xff39A935),
                    loading: loading,
                    onPressed: formKey.currentState != null &&
                            formKey.currentState!.validate()
                        ? () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const SignInPage())));
                          }
                        : null,
                    title: "Continue",
                  ),
                
                ],
              ),

            ),
          ),
        ),
      ),
    );
  }
}
