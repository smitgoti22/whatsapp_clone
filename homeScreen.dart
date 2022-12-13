import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/tab_screens/calls.dart';
import 'package:whatsapp/tab_screens/chats.dart';
import 'package:whatsapp/tab_screens/status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabcontroller;
  int tabselected = 0;

  @override
  void initState() {
    tabcontroller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FluentIcons.camera_24_regular),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(FluentIcons.search_24_regular),
          ),
          PopupMenuButton(
              position: PopupMenuPosition.over,
              itemBuilder: (context) => [
                    const PopupMenuItem(
                        child: SizedBox(width: 125, child: Text('New group'))),
                    const PopupMenuItem(
                        child:
                            SizedBox(width: 125, child: Text('New broadcast'))),
                    const PopupMenuItem(
                        child: SizedBox(
                            width: 145, child: Text('Linked devices'))),
                    const PopupMenuItem(
                        child: SizedBox(
                            width: 145, child: Text('Starred messages'))),
                    const PopupMenuItem(
                        child: SizedBox(width: 100, child: Text('Payments'))),
                    const PopupMenuItem(
                        child: SizedBox(width: 100, child: Text('Settings'))),
                  ]),
        ],
        bottom: TabBar(
            controller: tabcontroller,
            onTap: (value) {
              setState(() {
                tabselected = value;
              });
            },
            indicatorSize: tabselected == 0
                ? TabBarIndicatorSize.label
                : TabBarIndicatorSize.tab,
            labelPadding: EdgeInsets.symmetric(vertical: 10),
            tabs: const [
              SizedBox(
                  height: 25,
                  width: 35,
                  child: Tab(child: Icon(Icons.group_rounded))),
              Text('Chats',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              Text('Status',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              Text('Calls',
                  style: TextStyle(
                    fontSize: 16,
                  )),
            ]),
      ),
      body: TabBarView(controller: tabcontroller, children: [
        Container(
            height: double.infinity,
            color: Colors.white,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 300,width: 300,child: Image.network(
                    'https://img.freepik.com/free-vector/group-photo-concept-illustration_114360-9798.jpg?w=740&t=st=1670349661~exp=1670350261~hmac=90eb5768dfeaa13453b816fb10270b190ee9c7e7d8271449e65168a5d2400923',fit: BoxFit.cover),),
                SizedBox(
                  height: 10,
                ),
                Text("Intro Community",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28)),
                SizedBox(
                  height: 10,
                ),
                Text("Tap Started Now",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ))),
        Chats(),
        Status(),
        Calls()
      ]),
    );
  }
}
