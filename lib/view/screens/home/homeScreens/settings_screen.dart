import 'package:flutter/material.dart';

import '../../../widgets/item_builder.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: const BouncingScrollPhysics(),
      children: const [
        ItemBuilder('FAQ', 'assets/icons/faq.png'),
        ItemBuilder('Terms', 'assets/icons/document.png'),
        ItemBuilder('Our Partners', 'assets/icons/partner.png'),
        ItemBuilder('Support', 'assets/icons/support.png'),
        ItemBuilder('Logout', 'assets/icons/logout.png'),
      ],
    );
  }
}
