import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          centerTitle: false,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),

            ],
          ),
          actions:  [
            const Icon(Icons.search),
            SizedBox(width: 10,),
            PopupMenuButton(
              icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (context,)=>const [
                  PopupMenuItem(child: Text('New Group'),),
                  PopupMenuItem(child: Text('Settings '),),
                  PopupMenuItem(child: Text('Logout'),),

                ] ),
            SizedBox(width: 10,),
          ],
        ),
        body: TabBarView(
          children: [Text('cam'),
             ListView.builder(
               itemCount: 100  ,
               itemBuilder: (context,index){
                 return ListTile(
                   leading: CircleAvatar(
                     backgroundImage: NetworkImage('https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?cs=srgb&dl=pexels-tu%E1%BA%A5n-ki%E1%BB%87t-jr-1382731.jpg&fm=jpg '),
                   ),
                   title: Text('Emily Cooper'),
                   subtitle: Text('I am going to Paris.'),
                   trailing: Text('3:00 AM'),
                 );
 
               },

             ),
          ListView.builder(
            itemCount: 100  ,
            itemBuilder: (context,index){
              return ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.green,
                      width: 3,
                    )
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?cs=srgb&dl=pexels-tu%E1%BA%A5n-ki%E1%BB%87t-jr-1382731.jpg&fm=jpg '),
                  ),
                ),
                title: Text('Emily Cooper'),
                subtitle: Text('32m ago'),

              );

            },

          ),
          ListView.builder(
            itemCount: 100  ,
            itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?cs=srgb&dl=pexels-tu%E1%BA%A5n-ki%E1%BB%87t-jr-1382731.jpg&fm=jpg '),
                ),
                title: Text('Emily Cooper'),
                subtitle: index/2==0? Text('You missed a call.'):Text('Today, 17:08'),
                trailing: index/2==0 ? Icon(Icons.phone_missed_outlined):Icon(Icons.video_call_rounded),
              );

            },

          ),]
      ),
      ),
    );
  }
}
