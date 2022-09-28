import 'package:flutter/material.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({Key? key}) : super(key: key);
    
  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide:const BorderSide(color: Colors.grey)
    );
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
      
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                const  CircleAvatar(radius: 30,),
                const SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:const EdgeInsets.symmetric(horizontal: 10,vertical: 17),
                        hintText: 'Whta\'s on your mind',
                        border: outlineInputBorder,
                        focusedBorder: outlineInputBorder,  
                      ),
                    ),
                  ),
                  IconButton(onPressed: (){},
                   icon:const  Icon(Icons.image,color: Colors.green,size: 40,))
                ],
              ),
            ),
            Text("......................................"),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:const [
                Text('Stories',style: TextStyle(color: Colors.blue),),
                Text('Reels')
              ],),
              SizedBox(
      
      
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder : (context,index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 170,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        image:const DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                        fit: BoxFit.fill
                        )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:const [
                             CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaWPe04ve7gxfEdYYJSI54lNBlQID_tO0bAw&usqp=CAU'),
                             ),
                              Text('Facebook'),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                ),
              ),
            //  const Divider(thickness: 14,),
            Text("................................."),
        
             ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
               itemBuilder: (context,index) {
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Card(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height/2.2,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children:const [
                                  CircleAvatar(),
                                  SizedBox(width: 10,),
                                  Text('Blacko')
                                ],
                              ),
                                 Row(
                                   children:const [
                                     Icon(Icons.more_horiz),
                                      SizedBox(width: 10,),
                                     Icon(Icons.cancel_outlined)
                                   ],
                                 )
                            ],
                          ),
                        const  SizedBox(height: 10,),
                         const Text('csfldksknvinad mcsvionhfiojojaOXHCSIUHIO WDHUEWBDVJSGBXYGDHJEWIUFHIFHDSKVJWGBYGDNUSDSHVGYGYUGE',textAlign: TextAlign.center,),
                          const  SizedBox(height: 10,),
                          Container(
                            height: 150,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 20, 56, 22),
                              image:DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPO0lAaqweJovTtogSK_gWSChhWush-S0PZw&usqp=CAU'),fit: BoxFit.fill)
                            ),
                          ),
                          const  SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:const [
                              Icon(Icons.thumb_up_alt_outlined,),
                              Text('Comments')
                            ],
                          ),
                        const  Divider(thickness: 2,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  IconButton(onPressed: (){},
                                   icon: const Icon(Icons.thumb_up_alt_outlined,size: 25,)),
                                  const Text('Like')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(onPressed: (){},
                                   icon: const Icon(Icons.comment_bank_outlined,size: 25,)),
                                   const Text('Comment')
                                   
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(onPressed: (){},
                                   icon: const Icon(Icons.share,size: 25,)),  
                                   const Text('Send')   
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                   ),
                 );
               }
             )
        
          ],
        ),
      ),
    );
  }
}