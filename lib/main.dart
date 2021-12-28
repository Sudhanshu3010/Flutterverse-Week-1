import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'constants.dart';

void main() {
  runApp(RootWidget());
}

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Amazon"),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width * 1,
            child: Row(
              children: [
                const Text(
                  " Food Grid",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                // Image.asset(
                //   "assets/amazon.png",
                //   width: 100,
                // ),
                Spacer(),
                Container(
                    height: 30,
                    width: 25,
                    margin: EdgeInsets.all(10),
                    // padding: EdgeInsets.all(10),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(25)),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.deepPurple,
                      size: 30,
                    )),
                Container(
                    height: 25,
                    width: 30,
                    margin: EdgeInsets.all(10),
                    // padding: EdgeInsets.all(10),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(25)),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.deepPurple,
                      size: 30,
                    )),
              ],
            ),
          ),
        ],
      ), //Appbar Ends here

      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 2),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Search Bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xffF2F2F2),
                ),
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "What are you looking for?",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                      color: Colors.deepPurple,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Discounts & Coupons",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              Container(
                height: 130,
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: const LinearGradient(
                              colors: [
                                Colors.deepPurple,
                                Colors.deepPurpleAccent,
                                Colors.deepPurple,
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(3.0, 4.0),
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "50 % Flat Discount",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Use Code",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "FLUTTER50",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.yellowAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: const LinearGradient(
                              colors: [
                                Colors.yellow,
                                Colors.yellowAccent,
                                Colors.yellow,
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(3.0, 4.0),
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "20 % Flat Discount",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Use Code",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "GRID20",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: const LinearGradient(
                              colors: [
                                Colors.deepPurple,
                                Colors.deepPurpleAccent,
                                Colors.deepPurple,
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(3.0, 4.0),
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "60 % Flat Discount",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Use Code",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "PARTY60",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.yellowAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 5),
////////////////////////////////////////////////////////////////////////////////////////////////
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: const [
                          Text(
                            "Suggestions for you",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                    /////////////////////////////////////////////////////////////////////////
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 5),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 45,
                                  child: Image.asset('assets/pizza.png',
                                      width: 75),
                                ),
                                const Text(
                                  "Pizza",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Container(
                              margin: const EdgeInsets.only(left: 15),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 45,
                                    child: Image.asset('assets/burger.png',
                                        height: 80),
                                  ),
                                  const Text(
                                    "Burger",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              margin: const EdgeInsets.only(left: 15),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 45,
                                    child: Image.asset('assets/sandwich.png'),
                                  ),
                                  const Text(
                                    "Sandwich",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              margin: const EdgeInsets.only(left: 15),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 45,
                                    child: Image.asset('assets/roll.png'),
                                  ),
                                  const Text(
                                    " Rolls",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    /////////////////////////////////////////////////////////////////////////
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "Top Picks For You",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    //////////////////////////////////////////////////////////////////////////
                    Container(
                      height: 320,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: ListView.builder(
                        itemCount: listOfcategories.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(vertical: 2),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 150,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      //color: const Color(0xffF2F2F2),
                                      //color: Colors.deepPurple[50],
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(3.0, 4.0),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            //color: Colors.grey[100],
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                          child: Image.asset(
                                            listOfcategories[index]
                                                ["iconPath"]!,
                                            width: 100,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            listOfcategories[index]["name"]!,
                                            style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Color(0xffFFD700),
                                                ),
                                                const SizedBox(width: 4),
                                                Text(
                                                  listOfcategories[index]
                                                      ["star"]!,
                                                  style: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                                Text(
                                                  listOfcategories[index]
                                                      ["type"]!,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black45,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8),
                                            child: Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Colors.purple[50],
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      const SizedBox(width: 2),
                                                      const Icon(
                                                        Icons.timer_sharp,
                                                        size: 18,
                                                        color:
                                                            Colors.deepPurple,
                                                        //color: Color(0xffFFD700),
                                                      ),
                                                      Text(
                                                        listOfcategories[index]
                                                            ["time"]!,
                                                        style: const TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              Colors.deepPurple,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      const SizedBox(width: 3, height: 22),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(width: 12),
                                                Row(
                                                  children: [
                                                    Text(
                                                      listOfcategories[index]
                                                          ["distance"]!,
                                                      style: const TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Colors.black45),
                                                    ),
                                                    const Text(
                                                      " km",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Colors.black45),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.favorite_border,
                                        size: 30,
                                        color: Colors.deepPurple,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    ///////////////////////////////////////////////////////////////////
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
/////////////////////////---------------------------------------------------------------------------
      bottomNavigationBar: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 1,
        //color: Colors.grey,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(7.0, 8.0),
          )
        ]),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.home,
              size: 38,
              color: Colors.deepPurple,
            ),
            Icon(
              Icons.explore_rounded,
              size: 35,
              color: Colors.deepPurple,
            ),
            Icon(
              Icons.shopping_cart,
              size: 35,
              color: Colors.deepPurple,
            ),
            Icon(
              Icons.account_circle,
              size: 35,
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
      /////////////////////////---------------------------------------------------------------------------//BottomNavigationBar ends
    );
  }
}
