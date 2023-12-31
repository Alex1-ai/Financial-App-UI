import 'package:flutter/material.dart';

class HomePageState extends StatefulWidget {
  const HomePageState({Key? key}) : super(key: key);

  @override
  State<HomePageState> createState() => _HomePageStateState();
}

class _HomePageStateState extends State<HomePageState> {
  int _selectedItemIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Row(
          children: [
            buildNavbarItem(Icons.home, 0),
            buildNavbarItem(Icons.card_giftcard, 1),
            buildNavbarItem(Icons.camera, 2),
            buildNavbarItem(Icons.pie_chart, 3),
            buildNavbarItem(Icons.person, 4),
          ],
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF00B686), Color(0xFF00838F)],
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            Text(
                              "Available balance",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            Icon(
                              Icons.notifications,
                              color: Colors.white,
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF00B686),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.1),
                                    blurRadius: 8,
                                    spreadRadius: 3,
                                  )
                                ],
                                border: Border.all(
                                  width: 1.5,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              padding: EdgeInsets.all(5),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/2167673/pexels-photo-2167673.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Onedibe Chidiebele ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.camera_front,
                                        color: Colors.white),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          text: "\$5320",
                                          style: TextStyle(
                                            fontSize: 25,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          children: [
                                            TextSpan(
                                                text: ".50",
                                                style: TextStyle(
                                                    color: Colors.white38))
                                          ]),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    color: Colors.grey.shade100,
                    child: ListView(
                      padding: EdgeInsets.only(top: 75),
                      children: [
                        Text(
                          "Activity",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            buildActivityButton(
                                Icons.card_membership,
                                "My Card",
                                Colors.blue.withOpacity(0.2),
                                Color(0XFF015798)),
                            buildActivityButton(
                                Icons.transfer_within_a_station,
                                "Transfer",
                                Colors.cyanAccent.withOpacity(0.4),
                                Color(0XFF0097A7)),
                            buildActivityButton(
                                Icons.card_membership,
                                "Statistics",
                                Color(0XFFD7CCC8),
                                Color(0XFF9499B7))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Categories",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        SizedBox(height: 20),
                        buildCategoryCard(Icons.fastfood, "food", 120, 20),
                        buildCategoryCard(Icons.flash_on, "Utilities", 430, 17),
                        buildCategoryCard(Icons.fastfood, "food", 120, 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 185,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                width: MediaQuery.of(context).size.width * 0.85,
                height: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.05),
                        blurRadius: 8,
                        spreadRadius: 3,
                        offset: Offset(0, 10),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(50),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Income",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_upward,
                                  color: Color(0xFF00B38F),
                                )
                              ],
                            ),
                            Text(
                              "\$2 170.90",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontSize: 20.0),
                            )
                          ],
                        ),
                        Container(
                          width: 1,
                          height: 50,
                          color: Colors.grey,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Expenses",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_downward,
                                  color: Color(0xFF00B38F),
                                )
                              ],
                            ),
                            Text(
                              "\$1 450.10",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontSize: 20.0),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "You have spent \$1 494 this month",
                      style: TextStyle(
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                        //color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Let's see the cost statistics for this period",
                      style: TextStyle(
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                        //color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 1,
                        width: double.maxFinite,
                        color: Colors.grey.withOpacity(0.5)),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Tell me more",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF00B686)),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }

  GestureDetector buildNavbarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        height: 60,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 4,
                    color: Colors.green,
                  ),
                ),
                gradient: LinearGradient(colors: [
                  Colors.green.withOpacity(0.3),
                  Colors.green.withOpacity(0.0016),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter))
            : BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedItemIndex ? Color(0XFF00B686) : Colors.grey,
        ),
      ),
    );
  }

  Container buildCategoryCard(
      IconData icon, String title, int amount, int percentage) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 85,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: Color(0xFF00B686),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                ],
              ),
              Row(
                children: [
                  Text(
                    "\$$amount",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "($percentage%)",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              Container(
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2), color: Colors.grey),
              ),
              Container(
                height: 5,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Color(0XFF00B686)),
              )
            ],
          )
        ],
      ),
    );
  }



  Container buildActivityButton(
      IconData icon, String title, Color backgroundColor, Color iconColor) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
