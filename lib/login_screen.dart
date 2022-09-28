import 'package:facebook_clone/Authentication/create_account.dart';
import 'package:facebook_clone/screens/tabbar.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
          radius: 40,
          backgroundImage:   AssetImage('images/facebook_logo.png'),
              ),
             const SizedBox(height: 10,),
            const TextField(
              cursorColor: Colors.blue,
              decoration:  InputDecoration(
                hintText: 'Phone or email'
              ),
            ),
             const SizedBox(height: 10,),
            const TextField(
              cursorColor: Colors.blue,
              decoration:  InputDecoration(
                hintText: 'Password'
              ),
            ),
             const SizedBox(height: 15,),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
              },
             child:  Center(child:  Text('Log In',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white,fontSize: 20),),)),
                 const SizedBox(height: 15,),


             GestureDetector(child: Text('Forgot Password?',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.blue,),
             ),
             onTap: (){},
             ),
              const SizedBox(height: 20,),

          Row(
            children:const [
               Expanded(
                 child: Divider(
                           color: Colors.grey,
                         ),
               ),

          Text('or'),

              Expanded(
                child: Divider(
                          color: Colors.grey,
                        ),
              ),
            ],
          ),
           const SizedBox(height: 20,),
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateNewAccount(),));
              },
             child:  Center(child:  Text('Create new Facebook account',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white,fontSize: 15),))),
          ],
        ),
      ),
    );
  }
}