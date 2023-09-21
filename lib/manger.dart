import 'package:flutter/material.dart';

class messenger  extends StatelessWidget {
  const messenger ({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://img.freepik.com/premium-vector/man-avatar-profile-picture-vector-illustration_268834-538.jpg'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 20.0,
              backgroundColor:Colors.blue ,
              child: Icon(
                Icons.camera_alt,
                size: 18.0,
                color: Colors.white,
              ),
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 20.0,
              backgroundColor:Colors.blue ,
              child: Icon(
                Icons.edit,
                size: 18.0,
                color: Colors.white,
              ),
            ),
            onPressed: (){},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    5.0,),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,),
                    Text(
                      'Search',),
                  ],
                ),
              ),
              SizedBox(
                  height: 20.0),
              Container(
                height: 110.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context,index)=>buildStoryItem(),
                  separatorBuilder: (context,index)=>SizedBox(
                    width: 20,
                  ),
                  itemCount: 7,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context,index)=>buildChatItem(),
                separatorBuilder: (context,index)=>SizedBox(
                  height: 20,
                ),
                itemCount: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem()=>Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 35.0,
            backgroundImage: NetworkImage(
              'https://img.freepik.com/premium-vector/man-avatar-profile-picture-vector-illustration_268834-538.jpg',),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 9.0,
              end: 9.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 10.0,
              end: 10.0,
            ),
            child: CircleAvatar(
              radius: 6,
              backgroundColor: Colors.green,
            ),
          ),

        ],
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Abdalla Ahmed Abdalla Ahmed Abdalla Ahmed Abdalla Ahmed Abdalla Ahmed',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
                height: 5),
            Row(
              children: [
                Expanded(
                  child: Text(
                    '3aml eh yazmele',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,),
                  child: Container(
                    width:7,
                    height: 7,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '2:00 pm',
                ),
              ],
            ),

          ],
        ),
      ),
    ],
  );
  Widget buildStoryItem()=> Container(
    width: 50,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 35.0,
              backgroundImage: NetworkImage(
                'https://img.freepik.com/premium-vector/man-avatar-profile-picture-vector-illustration_268834-538.jpg',),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 9.0,
                end: 9.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 10.0,
                end: 10.0,
              ),
              child: CircleAvatar(
                radius: 6,
                backgroundColor: Colors.green,
              ),
            ),

          ],
        ),
        Text(
          'Abdalla Ahmed Mokhtar',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );

}
