import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _ageController = TextEditingController();
  // Creating a Map of Images and other data;

  Map data = {
    'images': [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbgk0yfCOe55931lf6q0osfhGRU-fnH8Im1g&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAMh_SuFO3GQYFbivDLoBdV478E3H9QPePgQ&s',
      'https://i1.sndcdn.com/avatars-000583246488-dhm5la-t240x240.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ0FpBg5Myb9CQ-bQpFou9BY9JXoRG6208_Q&s',
    ],
    'userNames': [
      'Hasnain',
      'Umer',
      'Wadood',
      'Sajid',
    ],
    'messages': [
      'Hi Umer',
      'Allah Hafiz',
      'party main aou gy',
      'KL milty hain inshAllah'
    ],
    'time': ['2:25', '3:25', '4:09', '8:00'],
    'Nochats': ['4', '1', '5', '30']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: Icon(Icons.chat),
        ),
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          actions: [
            Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.more_vert_rounded, color: Colors.white),
            SizedBox(
              width: 8,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(80)),
                child: TextFormField(
                  obscureText: false,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(180)),
                      fillColor: const Color.fromARGB(255, 70, 70, 70),
                      hintText: "Ask Meta AI or Search",
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              // whatsApp
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.black,
                width: double.infinity,
                height: 800,
                child: ContainedTabBarView(
                  tabBarProperties:
                      TabBarProperties(indicatorColor: Colors.green),
                  tabs: [
                    Text(
                      'Chats',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text('Status', style: TextStyle(color: Colors.white)),
                    Text('Calls', style: TextStyle(color: Colors.white)),
                  ],
                  views: [
                    // Chats
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: ListView.builder(
                        itemCount: data['images'].length,
                        itemBuilder: (context, index) {
                          return ListTile(
                              leading: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    NetworkImage(data['images'][index]),
                              ),
                              title: Text(
                                data['userNames'][index],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              subtitle: Text(
                                data['messages'][index],
                                style: TextStyle(color: Colors.white),
                              ),
                              trailing: Column(
                                children: [
                                  Text(
                                    data['time'][index],
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 12),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: Text(
                                      data['Nochats'][index],
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  )
                                ],
                              ));
                        },
                      ),
                    ),

                    // Chats Ended

                    // Status Started

                    Container(
                        margin: EdgeInsets.only(top: 15),
                        color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.green,
                                backgroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgWkA3X9cdGn3tggpvy_hnWe0QmRZW-DjwHw&s"),
                                radius: 38,
                              ),
                              title: Text(
                                "My status",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              subtitle: Text(
                                "Today 2:30pm",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 33),
                              child: Text("Recent Update",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  )),
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        radius: 38,
                                        backgroundColor: Colors.white,
                                        backgroundImage:
                                            NetworkImage(data["images"][index]),
                                      ),
                                      title: Text(
                                        data["userNames"][index],
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      subtitle: Text(
                                        "today 1:40pm",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        )),
                    // Status ended
                    // Calls started
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      color: Colors.black,
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              radius: 38,
                              backgroundColor: Colors.green,
                            ),
                            title: Text(
                              "Create call link",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            subtitle: Text(
                              "Share a link for your WhatsApp call",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 36, top: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Recent",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: data['userNames'].length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage:
                                          NetworkImage(data['images'][index]),
                                      radius: 38,
                                      backgroundColor: Colors.white,
                                    ),
                                    title: Text(
                                      data['userNames'][index],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Icon(
                                          Icons.call_received_outlined,
                                          color: Colors.red,
                                        ),
                                        Text(
                                          "Yesterday, 3:49 PM",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                  ],
                  onChange: (index) => print(index),
                ),
              ),

              // others
              // Text(
              //   "User Verfication!",
              //   style: TextStyle(fontSize: 25, color: Colors.white),
              // ),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              //   child: TextFormField(
              //     controller: _ageController,
              //     keyboardType: TextInputType.number,
              //     decoration: InputDecoration(
              //         hintText: "Enter your age?",
              //         hintStyle: TextStyle(color: Colors.white)),
              //   ),
              // ),
              // // ElevatedButton(onPressed: () {}, child: Text('Verify')),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     InkWell(
              //       onTap: () {
              //         int age = int.parse(_ageController.text.toString());
              //         if (age >= 18) {
              //           print('Welcome');
              //         } else {
              //           print('Sorry ');
              //         }
              //       },
              //       child: Container(
              //         alignment: Alignment.center,
              //         height: 40,
              //         width: 120,
              //         child: Text(
              //           "Verify",
              //           style: TextStyle(color: Colors.white, fontSize: 18),
              //         ),
              //         decoration: BoxDecoration(
              //             color: Colors.amber,
              //             borderRadius: BorderRadius.circular(160)),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     InkWell(
              //       onTap: () {},
              //       child: Container(
              //         alignment: Alignment.center,
              //         height: 40,
              //         width: 120,
              //         child: Text(
              //           "Exit",
              //           style: TextStyle(color: Colors.white, fontSize: 18),
              //         ),
              //         decoration: BoxDecoration(
              //             color: Colors.blue,
              //             borderRadius: BorderRadius.circular(160)),
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ));
  }
}
