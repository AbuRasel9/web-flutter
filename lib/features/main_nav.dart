import 'package:flutter/material.dart';
import 'package:imarket/features/Home/home_screen.dart';
import 'package:imarket/features/Home/sub_view/super_affilate_zone/super_affilate_zone.dart';
import 'package:imarket/features/Home/sub_view/withdraw_screen.dart';

/// Flutter code sample for [NavigationBar].

void main() => runApp(const MainNav());

class MainNav extends StatelessWidget {
  const MainNav({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;
  List<Widget>screens=[   HomeScreen(),
    SuperAffilateZoneScreen(),
    WithdrawScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.pages),
            label: 'Supper Affilate',
          ),
          NavigationDestination(
            icon: Icon(Icons.wallet),
            label: 'Widraw',
          ),
        ],
      ),
      body:screens[currentPageIndex],
    );
  }
}
