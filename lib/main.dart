import 'package:flutter/material.dart';
import 'package:flutter_application_7/Login.dart';
import 'package:flutter_application_7/HistoryScreen.dart';
import 'package:flutter_application_7/Cart.dart';
import 'package:flutter_application_7/Order.dart';
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
                    decoration: BoxDecoration(color: Colors.grey),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductListScreen()));
                  },
                ),
                ListTile(
                  title: Text('Cart'),
                  leading: Icon(Icons.shopping_bag),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                ),
                ListTile(
                  title: Text('Order'),
                  leading: Icon(Icons.shopping_cart_checkout),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Order()));
                  },
                ),
                ListTile(
                  title: Text('Account'),
                  leading: Icon(Icons.person),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
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
            backgroundColor: Colors.grey,
            child: Icon(Icons.refresh),
          ),
          appBar: AppBar(
            title: Text('Online Watch Shop'),
            backgroundColor: Colors.grey,
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
                          color: Colors.red[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_bag,
                              size: 50,
                              color: Colors.white,
                            ),
                            Text(
                              'List Produk',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cart()));
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green[300],
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.list,
                                size: 50,
                                color: Colors.white,
                              ),
                              Text(
                                'Cart',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[300],
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart_checkout,
                                size: 50,
                                color: Colors.white,
                              ),
                              Text(
                                'Order',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
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
                        ),
                        // kotak start
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '',
                              style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      const Color.fromARGB(255, 218, 183, 102)),
                            ),
                          ],
                        ),
                        // kotak end
                      ),
                    ),
                  ],
                ),

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
