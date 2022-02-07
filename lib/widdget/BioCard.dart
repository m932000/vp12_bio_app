import 'package:flutter/material.dart';
class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.subtitle,
    required this.trailingIcon,
    this.marginBottom=0,
    required this.onpressed,
    required this.traColor,
    required this.ledColor,

  }) : super(key: key);


  final IconData leadingIcon;
  final String title;
  final String subtitle;
  final IconData trailingIcon;
  final double marginBottom;
  final void Function() onpressed;
  final Color traColor;
  final Color ledColor;


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white38,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin:   EdgeInsetsDirectional.only(
            start:20,end:20,
            bottom: marginBottom),
        child: ListTile(
          leading:  Icon(leadingIcon,color: ledColor,),
          title:   Text(
            title,
          style:const TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 20
          ),),

          subtitle: Text(
            subtitle,
              style:const TextStyle(fontFamily: 'LibreBaskeeville',color: Colors.black,fontSize: 16)

          ),
          trailing: IconButton(
            onPressed: onpressed,
            icon:  Icon(trailingIcon,color: traColor,),
          ),
        ));
  }
}