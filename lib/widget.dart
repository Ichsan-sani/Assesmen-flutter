import 'package:flutter/material.dart';

class PopularWidget extends StatelessWidget {
  final String profile;
  final String title;
  final String status;
  final int price;
  final double rating;

  const PopularWidget({
    super.key,
    required this.profile,
    required this.title,
    required this.status,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 40, backgroundImage: AssetImage(profile)),
                    ],
                  )
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$$price',
                        style: TextStyle(
                          color: Colors.blue[400],
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow[400]),
                            SizedBox(width: 7),
                            Text('$rating(120 reviews)'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 25,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.orange.shade600, 
                          Colors.orange.shade300, 
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            status,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 50,
                  child: GestureDetector(
                    onTap: () {
                      
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5,         
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'View Profile',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 50,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade300,
                        Colors.blue.shade400, 
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.date_range_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Book Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}