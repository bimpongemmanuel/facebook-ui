import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          'Notifications',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.grey[200],
            elevation: 0,
            mini: true,
            onPressed: () {},
            child:const Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('New',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      
            ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder:(context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1614502875832-77fe801288ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fHByb2ZpbGUlMjBwaG90b3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                  ),
                  title: Text('Blacko'),
                  subtitle:  Text('dfergthytgedssvae'),
                );
              },),
              const Text('Earlier',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      
               ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder:(context, index) {
                return const ListTile(
                  leading:  CircleAvatar(
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1614502875832-77fe801288ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fHByb2ZpbGUlMjBwaG90b3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                  ),
                  title:  Text('Blacko'),
                  subtitle:  Text('dfergthytgedssvaebjbgjtfrtdth'),
                );
              },),
          ],
        ),
      ),
    );
  }
}