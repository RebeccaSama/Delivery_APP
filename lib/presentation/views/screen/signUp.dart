import 'package:delivery_app/core/button.dart';
import 'package:delivery_app/presentation/views/screen/signIn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/text_field_input.dart';
import 'deliveryRegist.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
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
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 40,
                    ),
                    child: const Text(
                      'Lets Register account',
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
                    'Hello user , you have a greatful journey',
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
                  const SizedBox(
                    height: 24,
                  ),
                  TextFieldInput(
                    fontWeight: FontWeight.w300,
                    coloricons: Colors.black26,
                    controller: _emailController,
                    label: "Email",
                    hint: "sama@gmail.com",
                    validator: (value) {
                      if (value == "") {
                        return "veuiller renseigner votre email";
                      } else if (!RegExp(
                              r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                          .hasMatch(value!)) {
                        return "Cet email est invalide";
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFieldInput(
                    onTap: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    onLongPressDown: (value) {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    onLongPressUp: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    coloricons: Colors.black26,
                    fontWeight: FontWeight.w300,
                    iconData:
                        showPassword ? Icons.visibility_off : Icons.visibility,
                    controller: _passwordController,
                    label: "Password",
                    hint: "******",
                    isPassword: showPassword,
                    validator: (value) {
                      if (value == "") {
                        return "mot de passe obligatoire";
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFieldInput(
                    coloricons: passwordsMatch ? Colors.green : Colors.red,
                    fontWeight: FontWeight.w300,
                    iconData: _confirmPasswordController.text.isEmpty
                        ? null
                        : passwordsMatch
                            ? Icons.check
                            : Icons.clear,
                    controller: _confirmPasswordController,
                    label: " Confirm password",
                    hint: "******",
                    validator: (value) {
                      if (value == "") {
                        return "veuiller confirmer le mot de pass";
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      setState(() {
                        passwordsMatch = (_passwordController.text == value);
                      });
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
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
                                    builder: ((context) =>
                                        const DeliveryRegist())));
                          }
                        : null,
                    title: "Sign Up",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ButtonN(
                    color: Colors.white,
                    textColor: Colors.green,
                    loading: loading,
                    onPressed: formKey.currentState != null &&
                            formKey.currentState!.validate()
                        ? () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const SignInPage())));
                          }
                        : null,
                    title: "Sign In",
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          height: 4,
                          color: Colors.black26,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text('or continue with'),
                      ),
                      Expanded(
                        child: Divider(
                          height: 4,
                          color: Colors.black26,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.facebook,
                            size: 30,
                            color: Color.fromARGB(255, 22, 64, 155),
                          ),
                        ),
                      ),
                      const SizedBox(width: 25),
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.google,
                          size: 30,
                          color: Colors.red,
                        ),
                      ),
                    ],
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
