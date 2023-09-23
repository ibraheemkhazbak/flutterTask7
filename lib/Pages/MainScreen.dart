import 'package:flutter/material.dart';

import '../Widgets/Conversation.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  Drawer(
        
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xFF2196F3)),
              child: Container(
                width: double.infinity,
                  height: double.infinity,
                padding: const EdgeInsets.all(10),
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 30,),
                      SizedBox(height: 10,),
                      Text("Ibraheem Mohamed",style: TextStyle(fontSize: 15,color: Colors.white),),
                      SizedBox(height: 5,),
                      Text("sdlkfjads@gmail.com",style: TextStyle(fontSize: 15,color: Colors.white),),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.camera_alt),
        backgroundColor: Colors.black,
        onPressed: (){

      },),
      appBar: AppBar(
        title: const Text("WhatsApp Chat",style: TextStyle(fontSize: 26),),
      backgroundColor: const Color(0xFF4CAF50),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10,),
          Icon(Icons.message),
          SizedBox(width: 10,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            Conversation(name: "Ibraheem",messageIcon: Icons.mic,message:"0:07",sentTime: "Friday",messageCount: null,),
            Conversation(name: "Ibraheem",messageIcon: Icons.mic,message:"0:07",sentTime: "1:30 PM",messageCount: null,),
            Conversation(name: "Ibraheem",messageIcon: Icons.mic,message:"0:07",sentTime: "1:30 PM",messageCount: null,),
            Conversation(name: "Ibraheem",messageIcon: Icons.mic,message:"0:07",sentTime: "1:30 PM",messageCount: null,),
            Conversation(name: "Ibraheem",messageIcon: Icons.mic,message:"0:07",sentTime: "1:30 PM",messageCount: null,),
            Conversation(name: "Ibraheem",messageIcon: Icons.mic,message:"0:07",sentTime: "1:30 PM",messageCount: null,),
            Conversation(name: "Ibraheem",messageIcon: Icons.mic,message:"0:07",sentTime: "1:30 PM",messageCount: null,),
            Conversation(name: "Ibraheem",messageIcon: Icons.mic,message:"0:07",sentTime: "1:30 PM",messageCount: null,),
            Conversation(name: "Ibraheem",messageIcon: Icons.mic,message:"0:07",sentTime: "1:30 PM",messageCount: null,),
            Conversation(name: "Ibraheem",messageIcon: Icons.mic,message:"0:07",sentTime: "1:30 PM",messageCount: null,),
            Conversation(name: "Ibraheem",messageIcon: Icons.mic,message:"0:07",sentTime: "July 21",messageCount: null,),
            Conversation(name: "Ibraheem",messageIcon: Icons.mic,message:"0:07",sentTime: "1:30 PM",messageCount: null,),
            Conversation(name: "Ibraheem",messageIcon: Icons.mic,message:"0:07",sentTime: "1:30 PM",messageCount: null,),
            Conversation(name: "Ibraheem",messageIcon: Icons.mic,message:"0:07",sentTime: "1:30 PM",messageCount: null,),
            Conversation(avatarColor: Colors.green,name: "Amgad",messageIcon: Icons.mic,message:"0:22",sentTime: "2:43 PM",messageCount: 1,),
            Conversation(avatarColor: Colors.grey[700], name: "Ammar",messageIcon: Icons.check,message:"How's it going?",sentTime: "5:09 PM",messageCount: 2,),
          ],
        ),
      ),
    );
  }
}

