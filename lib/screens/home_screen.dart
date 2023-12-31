import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:e_learning_app/constants.dart';
import 'package:e_learning_app/model/product_model.dart';
import 'package:flutter/material.dart';
import 'components/appbar.dart';
import 'components/category.dart';
import 'components/sorting.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bottom bar
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // Use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: kpink,
            inactiveColor: Colors.grey[300],
          ),
          // BottomNavyBarItem(
          //   icon: Icon(Icons.favorite_rounded),
          //   title: Text('Favorite'),
          //   inactiveColor: Colors.grey[300],
          //   activeColor: kpink,
          // ),
          BottomNavyBarItem(
            icon: Icon(Icons.camera), // Use the camera icon here
            title: Text('Camera'), // Customize the text as needed
            inactiveColor: Colors.grey[300],
            activeColor: kpink,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            inactiveColor: Colors.grey[300],
            activeColor: kpink,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            CustomeAppBar(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hi there",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Today is a good day\nto learn something new!",
                            style: TextStyle(
                              color: Colors.black54,
                              wordSpacing: 2.5,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: kpurple,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Image.asset(
                              "assets/images/profile.png",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Sorting
                  Sorting(),
                  const SizedBox(
                    height: 20,
                  ),
                  // Category list

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     const Text(
                  //       "Categories",
                  //       style: TextStyle(
                  //         fontSize: 18,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //     InkWell(
                  //       onTap: () {},
                  //       child: const Text(
                  //         "See All",
                  //         style: TextStyle(fontSize: 16, color: kblue),
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  // Now we create models of our images and colors which we will use in our app
                  const SizedBox(
                    height: 20,
                  ),
                  // We can not use GridView inside Column, use shrinkWrap and physics
                  CategoryList(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
