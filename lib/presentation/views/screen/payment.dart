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
      body: Padding(
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
      ),
    );
  }
}
