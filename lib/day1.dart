import 'package:flutter/material.dart';

class Day1 extends StatelessWidget {
  const Day1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('karir', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.blue,
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: 80,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(color: Colors.blue, width: 3),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star, size: 30,),
                        SizedBox(width: 5),

                        Text('favorit', style: TextStyle(
                          fontSize: 22,
                          color: Colors.blue[100],
                          fontWeight: FontWeight.w500
                        )),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(color: Colors.blue, width: 3),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.share ,size: 30,),
                        SizedBox(width: 5),

                        Text('share', style: TextStyle(
                          fontSize: 22,
                          color: Colors.blue[100],
                          fontWeight: FontWeight.w500
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            OutlinedButton(onPressed: (){},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
             child: Center(
              child: Text('save', style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w500
              )
              ),
             ),
             ),

              SizedBox(height: 25,),
             OutlinedButton(onPressed: (){},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(  
                borderRadius: BorderRadius.circular(10),
              ),
              side: BorderSide(color: Colors.blue, width: 3),
            ),
             child: Center(
              child: Text('cancel', style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
                fontWeight: FontWeight.w500
              )
              ),
             ),
             ),
          ],
        ),
      ),
    );
  }
}
