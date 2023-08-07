import 'package:demo_screens_3/analytics.dart';
import 'package:demo_screens_3/chat_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffF9F9F9),
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Image.asset(
              "images/logo.png",
              height: 60,
              width: 60,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            RichText(
              text: const TextSpan(
                text: "Log ",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff000080)),
                children: [
                  TextSpan(
                    text: "In",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Enter your email",
                fillColor: Colors.white,
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            const Text(
              "Password",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            TextField(
              controller: passwordController,
              obscureText: isObscure,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    isObscure = !isObscure;
                    setState(() {});
                  },
                  icon: isObscure
                      ? const Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                        )
                      : const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.grey,
                        ),
                ),
                hintText: "Password",
                fillColor: Colors.white,
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                const Text(
                  "Forgot Password?",
                  style: TextStyle(color: Color(0xff000080)),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  AnalyticsClass().appOpen();
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ChatScreen();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff000080),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13))),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Row(
              children: const [
                Expanded(
                    child: Divider(
                  thickness: 1,
                  color: Color(0xffAAAAAA),
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "Or Login with Social Media",
                    style: TextStyle(color: Color(0xffAAAAAA)),
                  ),
                ),
                Expanded(
                    child: Divider(
                  thickness: 1,
                  color: Color(0xffAAAAAA),
                )),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "images/fb.png",
                  height: 60,
                ),
                Image.asset(
                  "images/google.png",
                  height: 60,
                ),
                Image.asset(
                  "images/twitter.png",
                  height: 60,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            RichText(
              text: const TextSpan(
                text: "New Member ",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                children: [
                  TextSpan(
                    text: "SIGN UP",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff000080)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
