import 'package:facebook_clone/Authentication/number.dart';
import 'package:facebook_clone/Authentication/terms.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>const NumberScreen(),));
      },
       icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
       title:const Text('Password',style: TextStyle(color: Colors.black),),
       centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
             Text(' Choose a password',style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                 const  SizedBox(height: 15,),
             const Text(' Craete a password with at least 6 characters.it should be something others couldn\'t guess. ',textAlign: TextAlign.center,),
             

                 const  SizedBox(height: 20,),

           const  TextField(
                        decoration: InputDecoration(
                          labelText: 'Password'
                        ),
                      ),
                      
                 const  SizedBox(height: 20,),

             TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TermsScreen(),));
                      },
                     child:  Center(child:  Text('Next',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white,fontSize: 15),),)),
             
          ],
        ),
      ),
    );
  }
}