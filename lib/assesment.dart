import 'package:bljerwidget/widget.dart';
import 'package:flutter/material.dart';

class Assesment extends StatelessWidget {
  const Assesment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(radius: 28, backgroundColor: Colors.grey),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Alex Turner",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(Icons.notifications_none_outlined),
                ),
              ],
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search for any service',
                      suffixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 16,
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(Icons.filter_alt_outlined),
                ),
              ],
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF90CAF9), Color(0xFF1565C0)],
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 25,
                      top: 35,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Save 25% Today!",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Exclusive discount \n on home service",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                          const SizedBox(height: 15),

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: const LinearGradient(
                                colors: [Colors.orange, Colors.yellow],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                stops: [0.8, 1.0],
                              ),
                            ),
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.book_outlined,
                                color: Colors.white,
                              ),
                              label: const Text(
                                "Book Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                minimumSize: const Size(150, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0.8, 0),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/images/2.png",
                          height: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Most Booked Service",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(Icons.handyman, color: Colors.blue),
                        ),
                        SizedBox(height: 5),
                        Text("Plumber", style: TextStyle(fontSize: 14)),
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.electrical_services,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Electrician", style: TextStyle(fontSize: 14)),
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.home_repair_service,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Carpenter", style: TextStyle(fontSize: 14)),
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.cleaning_services,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Painter", style: TextStyle(fontSize: 14)),
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(Icons.local_shipping, color: Colors.blue),
                        ),
                        SizedBox(height: 5),
                        Text("Mason", style: TextStyle(fontSize: 14)),
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(Icons.yard, color: Colors.blue),
                        ),
                        SizedBox(height: 5),
                        Text("Welder", style: TextStyle(fontSize: 14)),
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(Icons.construction, color: Colors.blue),
                        ),
                        SizedBox(height: 5),
                        Text("Rooter", style: TextStyle(fontSize: 14)),
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.read_more_rounded,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("More", style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20),

            SizedBox(height: 20),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Popular Near You',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Text(
                            'View all',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 20),

                  PopularWidget(
                    profile: 'assets/images/1.png',
                    title: 'Expert Plumbing',
                    status: 'Plumber',
                    price: 45,
                    rating: 4.5,
                  ),
                  SizedBox(height: 20),
                  PopularWidget(
                    profile: 'assets/images/2.png',
                    title: 'Expert Plumbing',
                    status: 'Plumber',
                    price: 45,
                    rating: 4.5,
                  ),
                  SizedBox(height: 20),
                  PopularWidget(
                    profile: 'assets/images/3.png',
                    title: 'Expert Plumbing',
                    status: 'Plumber',
                    price: 45,
                    rating: 4.5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
