import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/data/data.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Colors.teal,child: Icon(Icons.chat),),
      body: ListView.builder(
          itemCount: 20,
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => Dialog(
                            insetPadding: const EdgeInsets.only(bottom: 300),
                            child: Container(
                              height: 250,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        userdata[index]["image"].toString(),
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
                                      child: Padding(padding: EdgeInsets.only(left: 15,top: 35/4),child: Text(
                                        userdata[index]["firstName"] +
                                            " " +
                                            userdata[index]["maidenName"],
                                        style: TextStyle(color: Colors.white),
                                      ),)),
                                  Container(
                                      height: 40,
                                      color: Colors.white,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.chat,
                                                color: Color(0xff008069),
                                              )),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.call,
                                                color: Color(0xff008069),
                                              )),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.video_camera_back_rounded,
                                                color: Color(0xff008069),
                                              )),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.info_outline,
                                                color: Color(0xff008069),
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
                subtitle: Text(userdata[index]["username"],
                    style: const TextStyle(fontSize: 13)),
                trailing: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  child: Column(
                    children: const [
                      Text("11:37 am",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                ));
          }),
    );
  }
}
