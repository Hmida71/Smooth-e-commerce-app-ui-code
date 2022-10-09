import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 104, 124),
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(255, 238, 124, 141),
        ),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/framboises.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                  )),
              Expanded(child: Container(color: Colors.white)),
            ]),
          ),
          SizedBox(
            child: Column(children: [
              const Spacer(),
              Container(
                width: double.infinity,
                height: 100,
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                decoration: const BoxDecoration(
                    // color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage("images/logo-kusmi.png"),
                        fit: BoxFit.contain)),
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                height: 60,
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                // color: Colors.red,
                child: const Text(
                  "Discover our must-haves to enjoy\nat any time of the day!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.4,
                      height: 1.35),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              const Spacer(),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 42),
                    child: Material(
                      elevation: 10,
                      borderRadius: const BorderRadius.all(Radius.circular(35)),
                      child: Container(
                        width: double.infinity,
                        height: 235,
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                        decoration: const BoxDecoration(
                            // color: Colors.green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(35))),
                        child: Column(children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              // color: Colors.red,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              child: const Text(
                                "Discover\nnew\nflavors",
                                style: TextStyle(
                                  color: Color(0xff333d47),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  letterSpacing: 1.4,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.fade,
                                          child: const Home()));
                                },
                                child: Material(
                                  elevation: 10,
                                  shadowColor: const Color(0xfff45269),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12)),
                                  child: Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                        color: Color(0xfff45269),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    child: const Text(
                                      "Take a look",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -48,
                    top: 15,
                    child: Container(
                      width: 150,
                      height: 150,
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 50),
                      decoration: const BoxDecoration(
                          // color: Colors.red,
                          image: DecorationImage(
                              image: AssetImage("images/cafe.png"),
                              fit: BoxFit.contain)),
                    ),
                  ),
                
                
                ],
              ),
            ]),
          ),
        ],
      )),
    );
  }
}
