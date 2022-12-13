import 'package:flutter/material.dart';

import '../data/data.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 45, child: FloatingActionButton(onPressed: (){},backgroundColor: Colors.grey.shade100,child: Icon(Icons.edit,color: Colors.grey),),
            ),
            SizedBox(height: 15,),
            FloatingActionButton(onPressed: (){},backgroundColor: Colors.teal,child: Icon(Icons.camera_alt_rounded),),
          ],
        ),

        body: Center(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Row(
                children: [
                  Stack(children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1555952517-2e8e729e0b44?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60"),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        radius: 10,
                        child: Icon(Icons.add, color: Colors.white,size: 16),
                        backgroundColor: Color(0xff008069),
                      ),
                    )
                  ]
                  ),
                  const SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("My status",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                      SizedBox(
                        height: 3,
                      ),
                      Text("Tap to add status update",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          )),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Recent Updates",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
                children: List.generate(
                    5,
                    (index) => ListTile(
                        leading: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => Dialog(
                                    insetPadding:
                                        const EdgeInsets.only(bottom: 300),
                                    child: Container(
                                      height: 250,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                userdata[index]["image"]
                                                    .toString(),
                                              ),
                                              fit: BoxFit.cover)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              height: 35,
                                              width: double.infinity,
                                              color: Colors.black45,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 15, top: 35 / 4),
                                                child: Text(
                                                  userdata[index]["firstName"] +
                                                      " " +
                                                      userdata[index]
                                                          ["maidenName"],
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              )),
                                          Container(
                                              height: 40,
                                              color: Colors.white,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.chat,
                                                        color:
                                                            Color(0xff008069),
                                                      )),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.call,
                                                        color:
                                                            Color(0xff008069),
                                                      )),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons
                                                            .video_camera_back_rounded,
                                                        color:
                                                            Color(0xff008069),
                                                      )),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.info_outline,
                                                        color:
                                                            Color(0xff008069),
                                                      )),
                                                ],
                                              )),
                                        ],
                                      ),
                                    )));
                          },
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              userdata[index]["image"].toString(),
                            ),
                          ),
                        ),
                        title: Text(userdata[index]["firstName"] +
                            " " +
                            userdata[index]["maidenName"] +" "+userdata[index]["lastName"]),
                        subtitle: Text("Today, 10:15 pm",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            )),))),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Viewed Updates",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
                children: List.generate(
                    5,
                    (index) => ListTile(
                        leading: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => Dialog(
                                    insetPadding:
                                        const EdgeInsets.only(bottom: 300),
                                    child: Container(
                                      height: 250,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                userdata[index]["image"]
                                                    .toString(),
                                              ),
                                              fit: BoxFit.cover)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              height: 35,
                                              width: double.infinity,
                                              color: Colors.black45,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 15, top: 35 / 4),
                                                child: Text(
                                                  userdata[index]["firstName"] +
                                                      " " +
                                                      userdata[index]
                                                          ["maidenName"],
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              )),
                                          Container(
                                              height: 40,
                                              color: Colors.white,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.chat,
                                                        color:
                                                            Color(0xff008069),
                                                      )),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.call,
                                                        color:
                                                            Color(0xff008069),
                                                      )),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons
                                                            .video_camera_back_rounded,
                                                        color:
                                                            Color(0xff008069),
                                                      )),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.info_outline,
                                                        color:
                                                            Color(0xff008069),
                                                      )),
                                                ],
                                              )),
                                        ],
                                      ),
                                    )));
                          },
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              userdata[index]["image"].toString(),
                            ),
                          ),
                        ),
                        title: Text(userdata[index]["firstName"] +
                            " " +
                            userdata[index]["maidenName"]),
                        subtitle: Text("Yesterday, 11:37 am",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            )),

                        ))),
          ],
        ),
      ),
    ));
  }
}
