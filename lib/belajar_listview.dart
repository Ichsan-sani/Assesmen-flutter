import 'package:flutter/material.dart';

class BelajarListview extends StatefulWidget {
  const BelajarListview({super.key});

  @override
  State<BelajarListview> createState() => _BelajarListviewState();
}

class _BelajarListviewState extends State<BelajarListview> {
  List<Map<String, dynamic>> products = [
    {
      "name": "Vinyl The Sigit - Hertz Dyslexia",
      "image": "assets/images/1.png",
      "stock": 10,
      "price": 500000,
      "quantity": 1,
    },
    {
      "name": "DEFTONES - Private Music",
      "image": "assets/images/2.png",
      "stock": 10,
      "price": 500000,
      "quantity": 1,
    },
    {
      "name": "TWENTYONEPILOTS - Blurryface",
      "image": "assets/images/3.png",
      "stock": 10,
      "price": 500000,
      "quantity": 1,
    },
    {
      "name": "TRUNOVER - Peripheral Vision",
      "image": "assets/images/4.png",
      "stock": 10,
      "price": 500000,
      "quantity": 1,
    },
    {
      "name": "FLEETWOOD MAC - Rumors",
      "image": "assets/images/5.png",
      "stock": 10,
      "price": 500000,
      "quantity": 1,
    },
  ];

  int totalItem = 0;
  int totalPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kangker app",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                ),
                Text(
                  "semoga harimu menyenangkan",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                TextFormField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "cari sesuatu...",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[400],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1.5, color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1.5, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // ListView.builder(
                //   itemCount: 20,
                //   itemBuilder: (context, index) {
                //     return Container(
                //       margin: EdgeInsets.all(20),
                //       height: 100,
                //       width: double.infinity,
                //       color: Colors.cyan[200],
                //     )
                //   },
                // )
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 80),
                    child: ListView.separated(
                      // physics: NeverScrollableScrollPhysics(),
                      //sebagai pengatur jarak
                      separatorBuilder: (context, index) {
                        // return Divider(thickness: 3,);
                        return SizedBox(height: 10);
                      },
                      //MENGATUR JUMLAH ITEM
                      itemCount: products.length,
                      //MENGATUR BENTUK ITEM
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.cyan[200],
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  color: Colors.cyan,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      '${products[index]["image"]}',
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${products[index]["name"]}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "stock  : ${products[index]["stock"]}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  Text(
                                    "Rp. ${products[index]["price"]}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove_circle_outline,
                                      color: Colors.red,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                    child: Center(
                                      child: Text(
                                        "4",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_circle_outline,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "total (8 item) = Rp. 2.000.000",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
