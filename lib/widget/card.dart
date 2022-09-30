import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 120,
      child: Card(
          // margin:const EdgeInsets.all(8.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
            //  mainAxisSize: MainAxisSize.min,
             crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network('https://images.unsplash.com/photo-1571901205848-96622809cf6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODN8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',fit: BoxFit.fill,height: 70,),SizedBox(width: 20,),
        Text('Blacko',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
      ],
            ),
          ),
      ),
    );
  }
}
