import 'package:facebook_clone/Authentication/name.dart';
import 'package:facebook_clone/login_screen.dart';
import 'package:flutter/material.dart';

class CreateNewAccount extends StatelessWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
             height: MediaQuery.of(context).size.height/2.5,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('images/add.png'),
                fit: BoxFit.fill,
                )
              ),
            ),
           const SizedBox(height: 20,),
            Text('Join Facebook',style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            
          const  Text('we\'ll help you create a new account in a few easy step.'),
          const SizedBox(height: 30,),

            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NameScreen(),));
                },
               child:  Center(child:  Text('Next',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white,fontSize: 15),),)),

               const SizedBox(height: 190,),
               GestureDetector(child: Text('Already have an account?',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.blue,fontSize: 15),
               ),
               onTap: (){},
               ),
          ],
        ),
      ),
    );
  }

  AppBar createAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>const LogInScreen(),));
      },
       icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
       title:const Text('Create account',style: TextStyle(color: Colors.black),),
       centerTitle: false,
    );
  }
}