import 'package:flutter/material.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text('Friends',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: 35,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[200],
              ),
              child: const Icon(Icons.search,color: Colors.black,)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.grey[200],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                    onPressed: (){},
                   child: const Text('Suggestion',style: TextStyle(color: Colors.black),)),
                          const SizedBox(width: 15,),
                    TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.grey[200],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                    onPressed: (){},
                   child: const Text('Your Friends',style: TextStyle(color: Colors.black),)),
                ],
              ),const Divider(thickness: 2,),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                Text('Friends request',style: TextStyle(color: Colors.black),),
                Text('See all',style: TextStyle(color: Colors.blue),)
              ],),
                     const SizedBox(height: 10,),
                     ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return    const Padding(
                          padding:  EdgeInsets.all(8.0),
                          child:  FriendsRequest(),
                        );
                      },),
                     const Divider(thickness: 2,),
      
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: const [
                  Text('People You May Know',textAlign: TextAlign.start,style:  TextStyle(color: Colors.black),),
                 Text('')
               ],
             ),const SizedBox(height: 10,),
             ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
               return   const Padding(
                 padding: EdgeInsets.all(8.0),
                 child: PeopleYouMayKnow(),
               );
             },
      
            
          )]),
        ),
      )
    );
  }
}

class PeopleYouMayKnow extends StatelessWidget {
  const PeopleYouMayKnow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1606914707708-5180546f153d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
          radius: 40,),
        const SizedBox(width:10 ,),

        Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       const Text('Blacko'),const SizedBox(height: 10,),
       Row(
         children: const [
           CircleAvatar(
            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1630026317249-c1c83b21ea07?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzV8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
            radius: 15,),SizedBox(width: 10,),
           Text('20 mutual friend'),
         ],
       ), const SizedBox(height: 10,),
       Row(
         children: [
           TextButton(style: TextButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
             onPressed: (){},
            child: const Center(child: Text('Add Friend',style: TextStyle(color: Colors.white),))),
                    const SizedBox(width: 10,),
            TextButton(
             style: TextButton.styleFrom(backgroundColor: Colors.grey[200],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
             onPressed: (){},
            child: const Center(child: Text('Remove',style: TextStyle(color: Colors.black,))))
         ],
       )
     ],
        )
      ],
    );
  }
}

class FriendsRequest extends StatelessWidget {
  const FriendsRequest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage('https://i0.wp.com/www.kahanihindi.com/wp-content/uploads/2020/02/Whatsapp-DP-HALF-SIZE-Profile-81.jpg?resize=500%2C500&ssl=1'),
          radius: 40,),
        const SizedBox(width:10 ,),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Blacko'),const SizedBox(height: 10,),
            Row(
              children: const [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://media.istockphoto.com/photos/beautiful-afro-girl-with-curly-hairstyle-picture-id1381221247?b=1&k=20&m=1381221247&s=170667a&w=0&h=4bt0RFmAffRSqrKa2N2vJAFbWgmbRg7x-0ziJaRtpxE='),
                  radius: 15,),SizedBox(width: 10,),
                Text('1 mutual friend'),
              ],
            ), const SizedBox(height: 10,),
            Row(
              children: [
                TextButton(style: TextButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  onPressed: (){},
                 child: const Center(child:  Text('Confirm',style: TextStyle(color: Colors.white),))),
                         const SizedBox(width: 10,),
                 TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.grey[200],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  onPressed: (){},
                 child: const Center(child:  Text('Delete',style:  TextStyle(color: Colors.black,))))
              ],
            )
          ],
        )
      ],
    );
  }
}