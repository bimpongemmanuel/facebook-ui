import 'package:facebook_clone/Authentication/password.dart';
import 'package:facebook_clone/Authentication/signup_screen.dart';
import 'package:flutter/material.dart';


class TermsScreen extends StatelessWidget {
  const TermsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>const PasswordScreen(),));
      },
       icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
       title:const Text('Terms  & Privacy',style: TextStyle(color: Colors.black),),
       centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(    
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            const Text('Finish signing up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

            const  SizedBox(height: 20,),

            const Text('People who use our service may have uploaded your contact information to facebook .',textAlign: TextAlign.center,),
                 
                  const  SizedBox(height: 20,),

            TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen(),));
                      },
                     child:  Center(child:  Text('Sign up',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white,fontSize: 15),),)),
             
            
          ],
        ),
      ),
    );
  }
}