import 'package:flutter/material.dart';

class list_tile extends StatelessWidget {


  Icon leadingIcon;
  String titelText;
  Icon? trailingIcon;
  VoidCallback callback;
  list_tile({required this.leadingIcon,required this.titelText,this.trailingIcon,required this.callback});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white)),
      child: ListTile(
        leading: leadingIcon,
        title: Text(
          titelText,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
        onTap: callback,

      ),
    );
  }


}
