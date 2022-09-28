import 'package:facebook_clone/Authentication/name.dart';
import 'package:facebook_clone/Authentication/number.dart';
import 'package:flutter/material.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>const NameScreen(),));
      },
       icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
       title:const Text('Gender',style: TextStyle(color: Colors.black),),
       centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(' What\'s your gender?',style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
              const  SizedBox(height: 20,),
          const  Text(' You can change who sees your gender on your profile later',),

                    const  SizedBox(height: 20,),

          const TextField(
            decoration: InputDecoration(
              hintText: 'Female',
              suffixIcon: Icon(Icons.circle_outlined)
            ),
          ),

           const  SizedBox(height: 20,),
           
          const TextField(
            decoration:  InputDecoration(
              hintText: 'Male',
              suffixIcon: Icon(Icons.circle_outlined)
            ),
          ),

           const  SizedBox(height: 20,),

            const TextField(
            decoration:  InputDecoration(
              hintText: 'Custom',
              suffixIcon: Icon(Icons.circle_outlined)
            ),
          ),

               const  SizedBox(height: 20,),

          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                 shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)                    )
                   ),
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NumberScreen(),));
                    },
                   child:  Center(child:  Text('Next',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white,fontSize: 15),),)),
          ],
        ),
      ),
    );
  }
}