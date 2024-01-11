import 'package:flutter/material.dart';
import 'package:flutter_application_7/model/OrderItem.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => __OrderState();
}

class __OrderState extends State<Order> {
  List Order =[
    OrderItem(
      harga: "Rp. 780.000",
      nama: "DANIEL WELLINGTON Classic Petite Melrose",
      gambar:
          "data:image/jpeg;base64,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",
      quantity: "1",
    ),
    OrderItem(
      harga: "Rp.170.000",
      nama: "Casio Digital",
      gambar:
          "https://th.bing.com/th/id/OIP.0OFUFFt6paTCJ6kI1a85-QHaI4?w=160&h=192&c=7&r=0&o=5&pid=1.7",
      quantity: "1",
    ),
   
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("My Order"),
          
          ),
      body: ListView.builder(
          itemCount: Order.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => {
                setState(() {
                  Order = Order
                      .where((element) => element.nama == "DANIEL WELLINGTON Classic Petite Melrose")
                      .toList();
                }),
              },
              child: Row(children: [
                Image(
                    width: 100,
                    height: 100,
                    image: NetworkImage(Order[index].gambar)),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Order[index].nama),
                      Text(Order[index].harga),
                    ],
                  ),
                )
              ]),
            );
          }),
    );
  }
}
