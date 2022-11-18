import 'package:examapp/screen/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E3Ec),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Home",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        leading: Stack(
          alignment: Alignment.centerRight,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Icon(
                Icons.widgets,
                color: Colors.pinkAccent,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xffE5E3Ec),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.orange),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          // TextField(
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(),
          //     hintText: "Search...",
          //     suffixIcon: Icon(Icons.search)
          //   ),
          // ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Search...",
                            style: TextStyle(color: Colors.black26),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.tune_sharp,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 160,
              width: 400,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.deepPurpleAccent,
                  Colors.lightBlueAccent,
                ]),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 100,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white24,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Get the special discount",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "50%",
                            style: TextStyle(fontSize: 45, color: Colors.white),
                          ),
                          Text(
                            "OFF",
                            style: TextStyle(fontSize: 45, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Image.asset("assets/images/shoes.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white24,
                        child: Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: homeController.name.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text(
                      "${homeController.name[index]}",
                      style: TextStyle(color: Colors.pink),
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Popular",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "View All",
                  style: TextStyle(color: Colors.black26),
                ),
              ),
            ],
          ),

          Expanded(
            child: GridView.builder(
              itemCount: homeController.Listname.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 600,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        SizedBox(height: 100,child: Image.asset("${homeController.Listphoto[index]}")),
                        SizedBox(height: 20,),
                        Text("${homeController.Listname[index]}"),
                        Text("${homeController.Listprice[index]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
