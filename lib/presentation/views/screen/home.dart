import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;
  final formKey = GlobalKey<FormState>();
  bool showPassword = true;
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Material(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                padding: const EdgeInsets.only(top: 70),
                child: ToggleSwitch(
                  minWidth: 200.0,
                  cornerRadius: 10.0,
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
            Material(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                child: ToggleSwitch(
                  minWidth: 200.0,
                  cornerRadius: 10.0,
                  activeBgColors: const [
                    [Colors.grey],
                    [Colors.grey],
                    [Colors.grey],
                    [Colors.grey],
                  ],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.transparent,
                  inactiveFgColor: Colors.grey,
                  initialLabelIndex: 0,
                  totalSwitches: 4,
                  labels: const ['All', 'Pick up', 'Moving', 'Pending'],
                  radiusStyle: true,
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
              ),
            ),
            Stack(
                children: [
                  Container(
                    height: 300,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xffB8B8B8).withOpacity(0.54),
                          width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 110,
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff23CA7A), width: 1),
                                borderRadius: BorderRadius.circular(8),
                                color:
                                    const Color(0xff23CA7A).withOpacity(0.15)),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/package_outline.svg",
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 4),
                                    child: Text(
                                      "3 Packages",
                                      style: TextStyle(
                                          color: Color(0xff23CA7A),
                                          fontSize: 12),
                                    ),
                                  )
                                ]),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '88 Zurab Gorgiladze St',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      ),
                                      Text(
                                        'Georgia, Batumi',
                                        style: TextStyle(
                                            color: Color(0xffB8B8B8),
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '88 Zurab Gorgiladze St',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      ),
                                      Text(
                                        'Georgia, Batumi',
                                        style: TextStyle(
                                            color: Color(0xffB8B8B8),
                                            fontSize: 12),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1,
                                          color:
                                              Colors.green.withOpacity(0.24)),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/images/womem.png",
                                          ),
                                          fit: BoxFit.cover),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Aleksandr V.",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text("4,9",
                                              style: TextStyle(
                                                  color: Color(0xffB8B8B8),
                                                  fontSize: 12))
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Will deliver",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  Text("24.07.22 12:30",
                                      style: TextStyle(
                                          color: Color(0xffB8B8B8),
                                          fontSize: 12))
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xff23CA7A), width: 1),
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.green),
                              child: const Center(
                                child: Text(
                                  "Paye 1500 fca",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            "Aleksandr V.  has accepted your shipment! paye to start sending your packages",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          )
                        ]),
                  ),
                  Positioned(
                      top: 8,
                      right: 0,
                      child: Image.asset(
                        "assets/images/womem.png",
                      ))
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 300,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color(0xffB8B8B8).withOpacity(0.54),
                      width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 110,
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff23CA7A), width: 1),
                                borderRadius: BorderRadius.circular(8),
                                color:
                                    const Color(0xff23CA7A).withOpacity(0.15)),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/package_outline.svg",
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 4),
                                    child: Text(
                                      "4 Packages",
                                      style: TextStyle(
                                          color: Color(0xff23CA7A),
                                          fontSize: 12),
                                    ),
                                  )
                                ]),
                          ),
                          Container(
                            width: 110,
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xffF2AB58), width: 1),
                                borderRadius: BorderRadius.circular(8),
                                color:
                                    const Color(0xffF2AB58).withOpacity(0.15)),
                            child: const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.timelapse,
                                    color: Color(0xffF2AB58),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 4),
                                    child: Text(
                                      "3 Packages",
                                      style: TextStyle(
                                          color: Color(0xffF2AB58),
                                          fontSize: 12),
                                    ),
                                  )
                                ]),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '88 Zurab Gorgiladze St',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  Text(
                                    'Georgia, Batumi',
                                    style: TextStyle(
                                        color: Color(0xffB8B8B8), fontSize: 12),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '88 Zurab Gorgiladze St',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  Text(
                                    'Georgia, Batumi',
                                    style: TextStyle(
                                        color: Color(0xffB8B8B8), fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                          Text(
                            '07 juin 2023',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: Colors.green.withOpacity(0.24)),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/womem.png",
                                      ),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Aleksandr V.",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text("4,9",
                                          style: TextStyle(
                                              color: Color(0xffB8B8B8),
                                              fontSize: 12))
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Will deliver",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                              Text("24.07.22 12:30",
                                  style: TextStyle(
                                      color: Color(0xffB8B8B8), fontSize: 12))
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xff23CA7A), width: 1),
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.green),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Transform.rotate(
                                angle: -pi / 2,
                                child: const Icon(
                                  Icons.send,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "Picked up",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "Slide after picking up Aleksandr V. shipment",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      )
                    ]),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 210,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color(0xffB8B8B8).withOpacity(0.54),
                      width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 110,
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff23CA7A), width: 1),
                                borderRadius: BorderRadius.circular(8),
                                color:
                                    const Color(0xff23CA7A).withOpacity(0.15)),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/package_outline.svg",
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 4),
                                    child: Text(
                                      "4 Packages",
                                      style: TextStyle(
                                          color: Color(0xff23CA7A),
                                          fontSize: 12),
                                    ),
                                  )
                                ]),
                          ),
                          Container(
                            width: 110,
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff23CA7A), width: 1),
                                borderRadius: BorderRadius.circular(8),
                                color:
                                    const Color(0xff23CA7A).withOpacity(0.15)),
                            child: const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 4),
                                    child: Text(
                                      "Arrriving soon",
                                      style: TextStyle(
                                          color: Color(0xff23CA7A),
                                          fontSize: 12),
                                    ),
                                  )
                                ]),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '88 Zurab Gorgiladze St',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  Text(
                                    'Georgia, Batumi',
                                    style: TextStyle(
                                        color: Color(0xffB8B8B8), fontSize: 12),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '88 Zurab Gorgiladze St',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  Text(
                                    'Georgia, Batumi',
                                    style: TextStyle(
                                        color: Color(0xffB8B8B8), fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                          Text(
                            '07 juin 2023',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: Colors.green.withOpacity(0.24)),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/womem.png",
                                      ),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Aleksandr V.",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text("4,9",
                                          style: TextStyle(
                                              color: Color(0xffB8B8B8),
                                              fontSize: 12))
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Will deliver",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                              Text("24.07.22 12:30",
                                  style: TextStyle(
                                      color: Color(0xffB8B8B8), fontSize: 12))
                            ],
                          )
                        ],
                      ),
                    ]),
              ),
          ])),
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
      )),
    );
  }
}
