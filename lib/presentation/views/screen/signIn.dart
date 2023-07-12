import 'package:delivery_app/core/button.dart';
import 'package:delivery_app/presentation/views/screen/deliveryRegist.dart';
import 'package:delivery_app/presentation/views/screen/forgotPwd.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/text_field_input.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool showPassword = true;
  bool loading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const SizedBox(
                    height: 50,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Image.asset(
                      'assets/logo/logo_vert.png',
                      height: 50,
                      width: 105,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: const Text(
                      'Welcome',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Please enter your sign in details.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFieldInput(
                    fontWeight: FontWeight.w300,
                    controller: _emailController,
                    label: "Email",
                    hint: "sama@gmail.com",
                    validator: (value) {
                      if (value == "") {
                        return "L'émail ne doit pas être vide";
                      } else if (!RegExp(
                              r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                          .hasMatch(value!)) {
                        return "Cet email n'est pas valide";
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
                    fontWeight: FontWeight.w300,
                    iconData:
                        showPassword ? Icons.visibility_off : Icons.visibility,
                    controller: _passwordController,
                    label: "Password",
                    hint: "******",
                    isPassword: showPassword,
                    validator: (value) {
                      if (value == "") {
                        return "veuiller entrer votre email";
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPwd()));
                      },
                      child: const Text('Forgot password'),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: Colors.grey.withOpacity(0.6))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                            const Text(
                              " Facebook",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 25),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: Colors.grey.withOpacity(0.6))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const FaIcon(
                                FontAwesomeIcons.google,
                                size: 30,
                                color: Colors.red,
                              ),
                            ),
                            const Text(
                              " Google",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
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
