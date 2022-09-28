import 'package:facebook_clone/Authentication/create_account.dart';
import 'package:facebook_clone/Authentication/gender.dart';
import 'package:flutter/material.dart';

class NameScreen extends StatelessWidget {
  const NameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>const CreateNewAccount(),));
      },
       icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
       title:const Text('Name',style: TextStyle(color: Colors.black),),
       centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
             Text(' What\'s your name?',style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                
             const   SizedBox(height: 20,),

             const Text('Enter the name you use in real life'),
               
               const   SizedBox(height: 30,),
             Row(
              children:const [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'First Name'
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                  Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Last Name'
                    ),
                  ),
                )
              ],
             ),

             const   SizedBox(height: 50,),

              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const GenderScreen(),));
                  },
                 child:  Center(child:  Text('Next',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white,fontSize: 15),),)),
          ],
          
        ),
      ),
    );
  }
}