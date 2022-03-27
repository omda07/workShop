import 'package:flutter/material.dart';

class ItemBuilder extends StatelessWidget {
  final String title;
  final IconData icon;
  const ItemBuilder(this.title,this.icon,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){},
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            height: media.height /7,
            width: media.width/2.5,
            decoration:const BoxDecoration(
              color: Colors.white,
              borderRadius:  BorderRadius.only(
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0),
              ),

            ),
            child: Center(child: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(title,style: Theme.of(context).textTheme.headline6,),
            )),
          ),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
                radius: 35,
                backgroundColor:
                Colors.deepOrange,
                child: Icon(icon,color: Colors.white,size: media.height/14,)
            ),
          )
        ],
      ),
    );
  }
}
