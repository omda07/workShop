import 'package:flutter/material.dart';
import 'package:orange/view/widgets/news_builder.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        NewsBuilder(
            'https://i0.wp.com/techtrends.africa/wp-content/uploads/2022/01/Orange-702x336-1.png?fit=702%2C336&ssl=1',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
        SizedBox(height: media.height/40,),
        NewsBuilder(
            'https://i0.wp.com/techtrends.africa/wp-content/uploads/2022/01/Orange-702x336-1.png?fit=702%2C336&ssl=1',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
        SizedBox(height: media.height/40,),
        NewsBuilder(
            'https://i0.wp.com/techtrends.africa/wp-content/uploads/2022/01/Orange-702x336-1.png?fit=702%2C336&ssl=1',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
      ],
    );
  }
}
