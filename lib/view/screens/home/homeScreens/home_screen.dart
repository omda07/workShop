import 'package:flutter/material.dart';
import 'package:orange/view/widgets/item_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GridView.count(
        crossAxisCount: 2,
         physics:const BouncingScrollPhysics(),
         children: const[
           ItemBuilder('Lectures',Icons.menu_book),
           ItemBuilder('Sections',Icons.video_label),
           ItemBuilder('Events',Icons.event_available_outlined),
           ItemBuilder('Midterm',Icons.book),
           ItemBuilder('Final',Icons.book_outlined),
           ItemBuilder('Note',Icons.note_add_outlined)
         ],

          ),
    );
  }
}
