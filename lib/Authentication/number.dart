import 'package:facebook_clone/Authentication/gender.dart';
import 'package:facebook_clone/Authentication/password.dart';
import 'package:flutter/material.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>const GenderScreen(),));
      },
       icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
       title:const Text('Mobile number',style: TextStyle(color: Colors.black),),
       centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(' Enter your mobile number',style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                    
                const    SizedBox(height: 10,),
            const  Text(' Enter the mobile numberf where you can be reached.You '),
              const Text('can hide this from your profile later'),
                   const    SizedBox(height: 15,),
                   const  TextField(
                      decoration: InputDecoration(
                        labelText: 'Mobile number'
                      ),
                    ),

                     
                       const    SizedBox(height: 40,),
            TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      )
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PasswordScreen(),));
                    },
                   child:  Center(child:  Text('Next',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white,fontSize: 15),),)),
                       

                         const    SizedBox(height: 250,),

                   GestureDetector(child: Text('Sign up with email address',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.blue,fontSize: 15),
               ),
               onTap: (){},
               ),
          ],
        ),
      ),
    );
  }
}