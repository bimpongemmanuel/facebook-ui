import 'package:facebook_clone/screens/feeds.dart';
import 'package:facebook_clone/screens/friends.dart';
import 'package:facebook_clone/screens/home_screen.dart';
import 'package:facebook_clone/screens/menu_screen.dart';
import 'package:facebook_clone/screens/notification.dart';
import 'package:facebook_clone/screens/videos_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
    
    TabController? _controller;

    @override
  void initState() {
    super.initState();
    _controller = TabController(length: 6, vsync: this,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text('facebook',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 30),),
        centerTitle: false,
        actions: [
         FloatingActionButton(
          heroTag: 'btn1',
          elevation: 0,
          mini: true,
          backgroundColor: Colors.grey[200],
          onPressed: (){},
         child:const Icon(Icons.add,color: Colors.black),),
        const SizedBox(width: 10,),
         FloatingActionButton(
          heroTag: 'btn2',
          elevation: 0,
          mini: true,
          backgroundColor: Colors.grey[200],
          onPressed: (){},
         child:const Icon(Icons.search,color: Colors.black),),
         const SizedBox(width: 10,),
         FloatingActionButton(
          heroTag: 'btn3',
          elevation: 0,
          mini: true,
          backgroundColor: Colors.grey[200],
          onPressed: (){},
         child:const Icon(Icons.message,color: Colors.black),)
        ],
        bottom: TabBar(
        
          indicatorColor: Colors.blue,
          controller: _controller,
          unselectedLabelColor: Colors.white,
          labelColor: Colors.blue,
          tabs:const [
              Tab(icon: Icon(Icons.home,color: Colors.black,),),
              Tab(icon: Icon(Icons.tv,color: Colors.black),),
              Tab(icon: Icon(Icons.group,color: Colors.black),),
              Tab(icon: Icon(Icons.feed,color: Colors.black),),
              Tab(icon: Icon(Icons.notifications,color: Colors.black)),
              Tab(icon: Icon(Icons.menu,color: Colors.black),),
        ],)
      ),
        body: TabBarView(
          controller: _controller,
          children:const [
         HomeScreenPage(),
         VideosScreen(),
         FriendsScreen(),
         FeedScreen(),
         NotificationPage(),
         MenuScreen(),
        ]),
        
    );
  }
}