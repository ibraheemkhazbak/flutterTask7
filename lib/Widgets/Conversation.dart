import 'package:flutter/material.dart';

class Conversation extends StatelessWidget {
  IconData messageIcon;
  String name;
  String sentTime;
  String message;
  int? messageCount;
  Color? avatarColor;
  Conversation({super.key,this.avatarColor,required this.messageIcon,required this.name,required this.messageCount,required this.sentTime,required this.message});



  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        children: [
        CircleAvatar(radius: 30,backgroundColor: avatarColor ?? Colors.blue),
        const SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          Row(
            children: [
              Icon(messageIcon,color: Colors.grey,),
              const SizedBox(width: 5,),
              Text(message,style: const TextStyle(color: Colors.grey),)
            ],
          ),
        ],
        ),
          const Spacer(),
          Column(
            children: [
              Text(sentTime,style: const TextStyle(color: Color(0xFF4FB053)),),
              if (messageCount==null)
                  const SizedBox()
              else
                Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF4CAF50)),
                padding: const EdgeInsets.all(7),
                child: 
                Text(messageCount.toString(),style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              )

            ],
          )

        ],
      ),
    );
  }
}
