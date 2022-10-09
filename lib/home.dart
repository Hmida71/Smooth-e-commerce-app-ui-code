import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffe7e3),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 5),
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                decoration: const BoxDecoration(
                    // color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage("images/logo-kusmi-b.png"),
                        fit: BoxFit.fitHeight)),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: const Icon(Icons.local_mall_outlined),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                // color: Colors.greenAccent,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Our best-seller"),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          ...List.generate(
                            10,
                            (i) => SizedBox(
                              height: 320,
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Container(
                                    width: 280,
                                    height: 265,
                                    margin: const EdgeInsets.only(
                                        top: 10,
                                        right: 20,
                                        bottom: 10,
                                        left: 10),
                                    child: Material(
                                      elevation: 10,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(35)),
                                      child: Container(
                                        height: 265,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 5),
                                        decoration: const BoxDecoration(
                                            // color: Colors.green,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(35))),
                                        child: Column(children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.topLeft,
                                              // color: Colors.red,
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 20),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    "AquaSummer",
                                                    style: TextStyle(
                                                      color: Color(0xff333d47),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 24,
                                                      letterSpacing: 1.4,
                                                    ),
                                                  ),
                                                  SizedBox(height: 15),
                                                  Text(
                                                    "Green tea yerba\nmaté",
                                                    style: TextStyle(
                                                      color: Colors.black45,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                      letterSpacing: 1.2,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    "\$42.70",
                                                    style: TextStyle(
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 24,
                                                      letterSpacing: 1.2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Expanded(
                                            child: Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 20),
                                              child: Row(
                                                children: [
                                                  Material(
                                                    elevation: 5,
                                                    shadowColor:
                                                        const Color(0xfff45269),
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                12)),
                                                    child: Container(
                                                      height: 40,
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 15),
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: const BoxDecoration(
                                                          color:
                                                              Color(0xfff45269),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          12))),
                                                      child: const Text(
                                                        "Add to cart",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Material(
                                                    elevation: 5,
                                                    shadowColor:
                                                        const Color(0xfff45269),
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                12)),
                                                    child: Container(
                                                        height: 40,
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 15),
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: const BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            12))),
                                                        child: const Icon(
                                                          Icons
                                                              .favorite_outlined,
                                                          size: 18,
                                                          color: Colors.black38,
                                                        )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: -70,
                                    top: 40,
                                    child: Container(
                                      width: 165,
                                      height: 165,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 50),
                                      decoration: const BoxDecoration(
                                          // color: Colors.red,
                                          image: DecorationImage(
                                              image:
                                                  AssetImage("images/p1.png"),
                                              fit: BoxFit.contain)),
                                    ),
                                  ),
                                  Positioned(
                                    right: -10,
                                    top: -25,
                                    child: Container(
                                      width: 40,
                                      height: 70,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 50),
                                      decoration: const BoxDecoration(
                                          // color: Colors.red,
                                          image: DecorationImage(
                                              image:
                                                  AssetImage("images/book.png"),
                                              fit: BoxFit.contain)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Text("Choose your tea type"),
                    Column(
                      children: [
                        ...List.generate(
                          10,
                          (i) => Container(
                            width: double.infinity,
                            height: 100,
                            margin: const EdgeInsets.only(
                                top: 10, right: 10, bottom: 10, left: 10),
                            child: Material(
                              elevation: 10,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              child: Container(
                                height: 265,
                                decoration: const BoxDecoration(
                                    // color: Colors.green,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                child: Row(children: [
                                  Container(
                                    width: 100,
                                    height: double.infinity,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 10),
                                    decoration: BoxDecoration(
                                        // color: Colors.red,
                                        image: DecorationImage(
                                            image: i == 1
                                                ? const AssetImage(
                                                    "images/p3.png")
                                                : const AssetImage(
                                                    "images/p2.png"),
                                            fit: BoxFit.contain)),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          // color: Colors.green,
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "AquaSummer",
                                                style: TextStyle(
                                                  color: Color(0xff333d47),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  letterSpacing: 1.4,
                                                ),
                                              ),
                                              Text(
                                                "Green tea yerba\nmaté",
                                                style: TextStyle(
                                                  color: Colors.black45,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                  letterSpacing: 1.2,
                                                ),
                                              ),
                                              Spacer(),
                                              Text(
                                                "\$42.70",
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                  letterSpacing: 1.2,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 12,
                                          right: 15,
                                          child: Material(
                                            elevation: 5,
                                            shadowColor:
                                                const Color(0xfff45269),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(12)),
                                            child: Container(
                                              height: 40,
                                              width: 70,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15),
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                  color: Color(0xfff45269),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(12))),
                                              child: const Text(
                                                "Buy",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
