import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:orange/provider/layout_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) {
        var provider=Provider.of<HomeProvider>(context);
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: provider.screens[provider.currentIndex],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )
              ],
            ),
              child: SafeArea(
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                  child: GNav(
                    rippleColor: Colors.grey[300]!,
                    hoverColor: Colors.grey[100]!,
                    gap: 8,
                    activeColor: Colors.deepOrange,
                    iconSize: 24,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    duration: Duration(milliseconds: 400),
                    tabBackgroundColor: Colors.grey[100]!,
                    color: Colors.black,
                    tabs: const[
                      GButton(
                        icon: Icons.home,
                        text: 'Home',
                      ),
                      GButton(
                        icon: Icons.language,
                        text: 'News',
                      ),
                      GButton(
                        icon: Icons.settings_outlined,
                        text: 'Settings',
                      ),

                    ],
                    selectedIndex: provider.currentIndex,
                    onTabChange: (index) {
                      provider.changeBottomNav(index);
                    },
                  ),
                ),
              ),
            ),

        );
      },

    );
  }
}
