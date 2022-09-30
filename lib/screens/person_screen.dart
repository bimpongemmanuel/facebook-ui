import 'package:facebook_clone/widget/card.dart';
import 'package:flutter/material.dart';

class PersonScreen extends StatefulWidget {
  const PersonScreen({Key? key}) : super(key: key);

  @override
  State<PersonScreen> createState() => _PersonScreenState();
}

class _PersonScreenState extends State<PersonScreen> {
  final double coverHeight = 280;
  final double profileHeight = 144;

  get bottom => profileHeight / 2;
  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;
    // final bottom = profileHeight/2;
    return Scaffold(
      backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
      child: Column(
          children: [
            buildProfile(top),
            const Text(
              'Blacko',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text(
                      'Add to story',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: const Text(
                        'Edit profile',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    )),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              width: 10,
            ),
            const ListTile(
              leading: CircleAvatar(),
              title: Text('What\' new Blacko'),
              subtitle: Text('fehhjrgjhghuf,fhgryhd'),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text(
                      'Not now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text(
                      'Update profile',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Row(children: [
              const Icon(
                Icons.monitor_heart,
              ),
              const SizedBox(
                width: 10,
              ),
              Text('Single',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith())
            ]),
            Row(children: [
              const Icon(Icons.chat_rounded),
              const SizedBox(
                width: 10,
              ),
              Text('0550275934',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith())
            ]),
            Row(children: [
              const Icon(Icons.more_horiz),
              const SizedBox(
                width: 10,
              ),
              Text('See your About info',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith())
            ]),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF99C7EC),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {},
              child: const Center(
                  child: Text(
                'Edit public detail',
                style: TextStyle(color: Colors.white),
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Friends',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Find friends',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
           const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: const [
                  ProfileCard(),
                  ProfileCard(),
                  ProfileCard(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: const [
                  ProfileCard(),
                  ProfileCard(),
                  ProfileCard(),
                ],
              ),
            ),const SizedBox(height: 10,),
             TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Center(
                      child:  Text(
                        'See all friends',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
            const SizedBox(height: 10,),
            ListView.builder(
                itemCount: 7,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 4),
                    child: Card(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 2.2,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80'),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('Blacko'),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.more_horiz),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.close)
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'dfjkdhviurhgihgivhgirhojebfjbjkgwbgvrhejhjhehbgjvrrbhjbehbjhervbjreh bvhjbhjbjbjebjbkjrbdhjgkjhjbhgjhfbfhklhnugjgf',
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 180,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80'),
                                      fit: BoxFit.fill)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(
                                  Icons.thumb_up_alt_outlined,
                                ),
                                Text('Comments')
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.thumb_up_alt_outlined,
                                          size: 25,
                                        )),
                                    const Text('Like')
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.comment_bank_outlined,
                                          size: 25,
                                        )),
                                    const Text('Comment')
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.share,
                                          size: 25,
                                        )),
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
                })
          ],
      ),
    ),
        ));
  }

  Stack buildProfile(double top) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        )
      ],
    );
  }

  Widget buildCoverImage() => Container(
        
         decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius:  BorderRadius.vertical(),
         ),
        child: Image.network(
          'https://images.unsplash.com/photo-1522307837370-cc113a36b784?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjB8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
          fit: BoxFit.cover,
          width: double.infinity,
          height: coverHeight,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey,
        backgroundImage: const NetworkImage(
            'https://images.unsplash.com/photo-1630026317249-c1c83b21ea07?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzV8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
      );
}
