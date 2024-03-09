import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: GNav(
        color: Theme.of(context).colorScheme.primary,
        activeColor: Colors.white,
        tabActiveBorder:
            Border.all(color: Theme.of(context).colorScheme.primary),
        tabBackgroundColor: Theme.of(context).colorScheme.primary,
        tabBorderRadius: 18,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.list,
            text: ('Tasks'),
          ),
          GButton(
            icon: Icons.settings,
            text: ('Settings'),
          ),
        ],
      ),
    );
  }
}
