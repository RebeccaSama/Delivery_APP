import 'dart:math';

import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../../../core/button.dart';
import 'detailcard.dart';

class DeliveryRegist extends StatefulWidget {
  const DeliveryRegist({super.key});

  @override
  State<DeliveryRegist> createState() => _DeliveryRegistState();
}

class _DeliveryRegistState extends State<DeliveryRegist> {
  int currentPageIndex = 1;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;
  final formKey = GlobalKey<FormState>();
  bool showPassword = true;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Material(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    padding: const EdgeInsets.only(top: 70),
                    child: ToggleSwitch(
                      minWidth: 105.0,
                      cornerRadius: 20.0,
                      activeBgColors: [
                        [Colors.green[800]!],
                        [Colors.green[800]!]
                      ],
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.white,
                      inactiveFgColor: Colors.green,
                      initialLabelIndex: 0,
                      totalSwitches: 2,
                      labels: const ['Send', 'Delivered'],
                      icons: const [Icons.send, Icons.wallet_giftcard],
                      radiusStyle: true,
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(
                      top: 30,
                    ),
                    child: Image.asset(
                      "assets/images/product.png",
                      height: 150,
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        TextFormField(
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                          decoration: InputDecoration(
                            hintText: "Picked up adress",
                            prefixIcon: const Icon(Icons.local_shipping),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    const BorderSide(color: Colors.black12)),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    const BorderSide(color: Colors.black12)),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                          decoration: InputDecoration(
                            hintText: "Destination adresse",
                            prefixIcon: const Icon(Icons.location_on),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    const BorderSide(color: Colors.black12)),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    const BorderSide(color: Colors.black12)),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextFormField(
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                                decoration: InputDecoration(
                                  hintText: "Todays",
                                  prefixIcon:
                                      const Icon(Icons.calendar_month_outlined),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: Colors.black12)),
                                  errorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: Colors.black12)),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: TextFormField(
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                                decoration: InputDecoration(
                                  hintText: "Anytime",
                                  prefixIcon: const Icon(Icons.timelapse),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: Colors.black12)),
                                  errorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: Colors.black12)),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLength: null,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                          decoration: InputDecoration(
                            hintText: "Descriptom",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    const BorderSide(color: Colors.black12)),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    const BorderSide(color: Colors.black12)),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ButtonN(
                  textColor: Colors.white,
                  color: const Color(0xff39A935),
                  loading: loading,
                  onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const DetailCard())));
                        },
                  title: "Continue",
                ),
              ],
            ),
          ),
          bottomNavigationBar: NavigationBar(
            labelBehavior: labelBehavior,
            selectedIndex: currentPageIndex,
            onDestinationSelected: (int index) {
              setState(() {
                
                currentPageIndex = index;
              });
            },
            destinations: const <Widget>[
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.home,
                  color: Colors.green,
                ),
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.add, color: Colors.green),
                icon: Icon(Icons.add),
                label: 'New Order',
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.chat,
                  color: Colors.green,
                ),
                icon: Icon(Icons.chat),
                label: 'Chat',
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                icon: Icon(Icons.person),
                label: 'Account',
              ),
            ],
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height / 2,
            right: 30,
            child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Transform.rotate(
                  angle: pi / 2,
                  child: const Icon(
                    Icons.compare_arrows,
                    color: Colors.black,
                  ),
                )))
      ],
    );
  }
}
