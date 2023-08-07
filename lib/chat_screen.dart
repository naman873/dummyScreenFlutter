import 'dart:math';

import 'package:demo_screens_3/message_screen.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "images/players.png",
                    height: 30,
                  ),
                  const Text(
                    "Players",
                    style: TextStyle(color: Color(0xff15D1FC), fontSize: 12),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "images/chat.png",
                    height: 30,
                  ),
                  const Text(
                    "Chat",
                    style: TextStyle(color: Color(0xff15D1FC), fontSize: 12),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "images/connect.png",
                    height: 30,
                  ),
                  const Text(
                    "Connect",
                    style: TextStyle(color: Color(0xff15D1FC), fontSize: 12),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "images/my_profile.png",
                    height: 30,
                  ),
                  const Text(
                    "My Profile",
                    style: TextStyle(color: Color(0xff15D1FC), fontSize: 12),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            RichText(
              text: const TextSpan(
                text: "CHAT",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff000080)),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: "Search",
                // fillColor: Colors.grey.withOpacity(0.1),
                fillColor: const Color(0xffF5F5F5),
                filled: true,
                hintStyle: const TextStyle(
                  color: Color(0xffAAAAAA),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.white, width: 1),
                ),
              ),
            ),
            Expanded(
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white, Colors.white.withOpacity(0.05)],
                    stops: const [0.9, 1],
                    tileMode: TileMode.mirror,
                  ).createShader(bounds);
                },
                child: ListView.separated(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const MessageScreen();
                        }));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            height: 55,
                            width: 55,
                            child: Stack(
                              clipBehavior: Clip.none,
                              fit: StackFit.expand,
                              children: [
                                CircleAvatar(
                                  backgroundImage: Image.asset(
                                    "images/dummy.png",
                                    height: 50,
                                    scale: 10,
                                  ).image,
                                ),
                                Positioned(
                                    bottom: 2,
                                    right: 2,
                                    child: Container(
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                          color: Colors.green,
                                          shape: BoxShape.circle),
                                    )),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Doris Edwards",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff000080)),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "New Lamont, DE",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 6,
                                      width: 6,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.5),
                                          shape: BoxShape.circle),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "7.9  UTR",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          index < 5
                              ? Container(
                                  height: 25,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff15D1FC),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                    child: Text(
                                      "${Random().nextInt(10)}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 15,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
