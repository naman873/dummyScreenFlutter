import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Row(
              children: [
                Image.asset(
                  "images/back.png",
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Stack(
                    clipBehavior: Clip.none,
                    fit: StackFit.expand,
                    children: [
                      CircleAvatar(
                        backgroundImage: Image.asset(
                          "images/dummy.png",
                        ).image,
                        minRadius: 10,
                        maxRadius: 75,
                      ),
                      Positioned(
                          bottom: 1,
                          right: 1,
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
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
                        "Doris  Edwards",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000080)),
                      ),
                      Row(
                        children: [
                          const Text(
                            "New Lamont, DE",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 6,
                            width: 6,
                            decoration: const BoxDecoration(
                                color: Color(0xffd9d9d9),
                                shape: BoxShape.circle),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "7.9  UTR",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundImage: Image.asset(
                        "images/dummy.png",
                      ).image,
                      minRadius: 7,
                      maxRadius: 7,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      height: MediaQuery.of(context).size.height * 0.09,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color(0xffAAAAAA).withOpacity(0.4),
                          borderRadius: BorderRadius.circular(13)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Ut enim ad minima veniam, quis nostrum exercitationem ",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "2 min ago",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black.withOpacity(0.5)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundImage: Image.asset(
                        "images/dummy.png",
                      ).image,
                      minRadius: 7,
                      maxRadius: 7,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.3,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color(0xffAAAAAA).withOpacity(0.4),
                          borderRadius: BorderRadius.circular(13)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "images/dummy1.png",
                            height: MediaQuery.of(context).size.height * 0.25,
                          ),
                          Text(
                            "2 min ago",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black.withOpacity(0.5)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(child: Container()),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      height: MediaQuery.of(context).size.height * 0.09,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color(0xff000080),
                          borderRadius: BorderRadius.circular(13)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            "Ut enim ad minima veniam, quis nostrum ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "2 min ago",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const CircleAvatar(
                      backgroundColor: Color(0xff15D1FC),
                      minRadius: 5,
                      maxRadius: 5,
                    ),
                  ],
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Image.asset(
                          "images/wallpaper.png",
                          height: 25,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          "images/happy.png",
                          height: 25,
                        )
                      ],
                    ),
                  ),
                  suffixIcon: Container(
                    height: 20,
                    width: 20,
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center, // This is needed
                    child: Image.asset(
                      "images/send.png",
                    ),
                  ),
                  hintText: "Write a message...",
                  fillColor: const Color(0xffF5F5F5),
                  filled: true,
                  hintStyle: TextStyle(
                    color: const Color(0xff000000).withOpacity(0.5),
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
            ),
          ],
        ),
      ),
    );
  }
}
