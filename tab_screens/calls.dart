import 'package:flutter/material.dart';

import '../data/data.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Colors.teal,child: Icon(Icons.add_call),),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(0xff008069),
                        child: Icon(Icons.link,color: Colors.white),
                      ),
                      const SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Create call link",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )),
                          SizedBox(
                            height: 3,
                          ),
                          Text("Share a link for your whatsapp call",
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
                  child: Text("Recent",
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
                        10,
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
                              )),
                              trailing: index % 2 == 0 ? Icon(Icons.call,color: const Color(0xff008069),) : Icon(Icons.video_camera_back_rounded,color: const Color(0xff008069)),
                            ),
                    )),
              ],
            ),
          ),
        ));
  }
}

