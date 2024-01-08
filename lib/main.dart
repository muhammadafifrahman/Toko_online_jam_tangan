import 'package:flutter/material.dart';
import 'package:flutter_application_7/DaftarMotor.dart';
import 'package:flutter_application_7/FoodListScreen.dart';
import 'package:flutter_application_7/HistoryScreen.dart';
import 'package:flutter_application_7/productlist.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Online Watch Shop',
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.green),
                    accountName: Text("Online Watch Shop"),
                    accountEmail: Text("")),
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainApp()));
                  },
                ),
                ListTile(
                  title: Text('List Produk'),
                  leading: Icon(Icons.list),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>ProductListScreen()));
                  },
                ),
                ListTile(
                  title: Text('Cart'),
                  leading: Icon(Icons.shopping_bag),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProductListScreen()));
                  },
                ),
                ListTile(
                  title: Text('Order'),
                  leading: Icon(Icons.shopping_cart_checkout),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FoodListScreen()));
                  },
                ),
                ListTile(
                  title: Text('Account'),
                  leading: Icon(Icons.person),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FoodListScreen()));
                  },
                ),
                ListTile(
                  title: Text('History'),
                  leading: Icon(Icons.history),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HistoryScreen()));
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.red,
            child: Icon(Icons.refresh),
          ),
          appBar: AppBar(
            title: Text('Online Watch Shop'),
            backgroundColor: Colors.blue,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.red[400],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DaftarMotor()));
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.green[300],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                SizedBox(height: 10),
                // SLIDER START
                Text("Advertisement"),
                Container(
                  height: 150,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                              width: 300,
                              image: NetworkImage(
                                  "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/watch-ad-template-design-1bf820455215692dd063b35bb047aafe_screen.jpg?ts=1656319676")),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                              width: 300,
                              image: NetworkImage(
                                  "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/watch-ads-design-template-1692d7ca21095a376401fcfebe0fd50e_screen.jpg?ts=1635073539")),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                              width: 300,
                              image: NetworkImage(
                                  "https://lzd-img-global.slatic.net/g/p/78a9c7af5993610f228564c97bdd25e9.jpg_720x720q80.jpg")),
                        ),
                      ),
                    ],
                  ),
                ),

                /// END SLIDER
                SizedBox(height: 10),
              ],
            ),
          )),
    );
  }
}
