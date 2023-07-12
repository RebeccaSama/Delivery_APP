import 'package:delivery_app/core/button.dart';
import 'package:delivery_app/presentation/views/screen/signIn.dart';
import 'package:flutter/material.dart';

class Onboadind extends StatelessWidget {
  const Onboadind({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.only(
                top: 60,
              ),
              child: Image.asset(
                "assets/images/onboading.png",
                height: 300,
                fit: BoxFit.cover,
              )),
          Container(
            padding: const EdgeInsets.only(top: 20, right: 50, left: 50),
            child: const Text(
              "Urgent Service B2B Delivery",
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
            child: const Text(
              "We work on a crowdsourcing model. You place an order, the system selects the perfect courier for you.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black45,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
              padding: const EdgeInsets.all(20),
              child: ButtonN(
                textColor: Colors.white,
                color: Colors.green,
                title: "Start using",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const SignInPage())));
                },
              ))
        ],
      ),
    );
  }
}
