import 'package:flutter/material.dart';

class VideosScreen extends StatelessWidget {
  const VideosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: videoAppBar(),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children:const [
              Text('For You'),
               SizedBox(width: 10,),
              Text('Live'),
               SizedBox(width: 10,),
              Text('Gaming'),
               SizedBox(width: 10,),
              Text('Following'),
               SizedBox(width: 10,),
              Text('Saved'),
            ],
          ),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (context,index) {
              return Padding(
                padding: const EdgeInsets.only(top: 4,bottom: 4),
                child: Card(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height/2.2,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                CircleAvatar(
                                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80'),
                                ),
                                SizedBox(width: 10,),
                                   Text('Blacko'),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(Icons.more_horiz),
                                 SizedBox(width: 10,),
                                Icon(Icons.close)
                              ],
                            )
                          ],
                        ),
                       const SizedBox(height: 10,),
                       const Text('dfjkdhviurhgihgivhgirhojebfjbjkgwbgvrhejhjhehbgjvrrbhjbehbjhervbjreh bvhjbhjbjbjebjbkjrbdhjgkjhjbhgjhfbfhklhnugjgf',textAlign: TextAlign.center,),
                      const SizedBox(height: 10,),
                        Container(
                          height: 180,
                          decoration:const BoxDecoration(
                            image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80'),
                            fit: BoxFit.fill)
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:const [                          Icon(Icons.thumb_up_alt_outlined,),
                            Text('Comments')
                                 ],),
                        const SizedBox(height: 10,),
                        const Divider(),
      
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

  AppBar videoAppBar() {
    return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title:const Text('Watch',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
    actions: [
      FloatingActionButton(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        mini: true,
        onPressed: (){},
      // child:const Icon(Icons.settings,color: Colors.black,),
      ),
   const   SizedBox(width: 10,),
       FloatingActionButton(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        mini: true,
        onPressed: (){},
      // child: Icon(Icons.search,color: Colors.black,),
      ),
       const   SizedBox(width: 10,),
       FloatingActionButton(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        mini: true,
        onPressed: (){},
      child:const Icon(Icons.search,color: Colors.black,),
      )
    ],
  );
  }
}