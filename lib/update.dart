import 'package:flutter/material.dart';
import 'package:whatsapp_prjct/calls.dart';

class updatepg extends StatefulWidget {
  const updatepg({super.key});

  @override
  State<updatepg> createState() => _updatepgState();
}

class _updatepgState extends State<updatepg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 27, 32),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 27, 32),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text(
            "Updates",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.qr_code_scanner_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              ))
        ],
        leadingWidth: 100,
      ),     bottomNavigationBar: BottomAppBar(
        height: 95,
        color: Colors.transparent,
        child: Row(
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {Navigator.pop(context);},
                  icon: Icon(Icons.chat_rounded),
                  color: Colors.white,
                ),
                Text(
                  "chats",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "images/statusicon.png",
                    width: 30,
                  ),
                ),
                Text(
                  "Updates",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.groups_outlined,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Communities",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => callpg(),
                        ));
                  },
                    icon: Icon(
                      Icons.phone,
                      color: Colors.white,
                    )),
                Text(
                  "Calls",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.edit_outlined,color: Color.fromARGB(255, 37, 211, 102),),),
 
      body: ListView.builder(
              itemCount: pictures.length,
              itemExtent: 80,
              itemBuilder: (context, index) {
      return ListTile(
        leading: CircleAvatar(
          child: CircleAvatar(
            backgroundImage: AssetImage(pictures[index]),
            radius: 25,
          ),radius: 30,backgroundColor: Color.fromARGB(255, 9, 211, 102),
        ),
        title: Text(
          name[index],
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      
        subtitle: Text(
          time[index],
          style: TextStyle(color: Colors.white30),
        ),
      );
              },
            ),
       
    );
  }
}
List pictures = [
  "images/dp1.jpg",
  "images/dp2.webp",
  "images/dp3.webp",
  "images/dp4.webp",
  "images/dp5.webp",
  "images/dp6.jpg",
  "images/dp7.jpg",
  "images/dp8.jpg",
  "images/dp9.webp",
  "images/dp10.jpg",
  "images/dp11.jpg",
  "images/dp12.jpg",
  "images/dp13.jpg",
  "images/dp14.jpg",
  "images/dp15.jpg",
  "images/dp16.jpg",
];
List name = [
  "Arjun",
  "Ameya",
  "Aadya",
  "Adwaith",
  "Ram",
  "Sherin",
  "John",
  "Jerry",
  "Jeena",
  "Nimna",
  "Vivek",
  "Merin",
  "Miya",
  "Shreya",
  "Sandra",
  "Shabnam",
];
List time = [
  "1:31 PM",
  "12:50 PM",
  "12:25 PM",
  "12:10 PM",
  "12:00 PM",
  "11:45 AM",
  "11:30 AM",
  "11:11 AM",
  "10:58 AM",
  "9:10 AM",
  "8:00 AM",
  "7:45 AM",
  "6:50 AM" ,
  "6:00 AM",
  "Yesterday",
  "Yesterday",
  
];

