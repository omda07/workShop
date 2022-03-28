import 'package:flutter/material.dart';
import 'package:orange/view/widgets/item_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
       physics:const BouncingScrollPhysics(),
       children: const[
         ItemBuilder('Lectures','assets/icons/lecture.png'),
         ItemBuilder('Sections','assets/icons/sections.png'),
         ItemBuilder('Events','assets/icons/events.png'),
         ItemBuilder('Midterm','assets/icons/mid.png'),
         ItemBuilder('Final','assets/icons/final.png'),
         ItemBuilder('Note','assets/icons/book.png')
       ],

        );
  }
}
