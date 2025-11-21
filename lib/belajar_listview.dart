import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar ikon alat bangunan sesuai Flutter bawaan
    final List<IconData> buildingIcons = [
      Icons.plumbing,               // Plumber
      Icons.electrical_services,    // Electrician
      Icons.carpenter,              // Carpenter
      Icons.grass,                  // Planter
      Icons.handyman,               // Mason
      Icons.electrical_services,    // Welder
      Icons.roofing,                // Roofer
      Icons.more_horiz,             // More
    ];

    // Warna background ikon
    final List<Color> bgColors = [
      Colors.lightBlue.shade300,
      Colors.orange.shade300,
      Colors.green.shade300,
      Colors.red.shade300,
      Colors.purple.shade300,
      Colors.pink.shade300,
      Colors.blueGrey.shade300,
      Colors.grey.shade400,
    ];

    // Label untuk masing-masing ikon
    final List<String> labels = [
      "Plumber",
      "Electrician",
      "Carpenter",
      "Planter",
      "Mason",
      "Welder",
      "Roofer",
      "More",
    ];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 17,
                    backgroundImage: AssetImage("assets/images/user.png"),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          "Hello",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text(
                          "Rahmat Hidayat",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.notifications_outlined,
                      size: 22,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 5),

            // Search bar + filter
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2)),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: const InputDecoration(
                                hintText: "Search for any service...",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const Icon(Icons.search, color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2)),
                      ],
                    ),
                    child: const Icon(Icons.filter_alt, color: Colors.black),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Promo banner
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
                        color: Colors.black26, blurRadius: 8, offset: Offset(0, 4))
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
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Exclusive discount \n on home service",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
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
                              icon: const Icon(Icons.shopping_cart,
                                  color: Colors.white),
                              label: const Text(
                                "Book Now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                minimumSize: const Size(150, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
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
                            topLeft: Radius.circular(15)),
                        child: Image.asset(
                          "assets/images/bg_service.png",
                          height: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Title Most Booked Service
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
                        color: Colors.black),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Grid Most Booked Service
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(buildingIcons.length, (index) {
                  return _InteractiveIconWithLabel(
                    iconData: buildingIcons[index],
                    bgColor: bgColors[index],
                    label: labels[index],
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("You tapped ${labels[index]}"),
                          duration: const Duration(milliseconds: 500),
                        ),
                      );
                    },
                  );
                }),
              ),
            ),

            const SizedBox(height: 30),

            // Title Popular Near You
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Popular Near You",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Grid Popular Near You (Placeholder)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.count(
                crossAxisCount: 2, // 2 kolom
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(4, (index) {
                  return Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Place ${index + 1}",
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                }),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

// Widget untuk ikon interaktif dengan efek scale + label
class _InteractiveIconWithLabel extends StatefulWidget {
  final IconData iconData;
  final Color bgColor;
  final String label;
  final VoidCallback onTap;

  const _InteractiveIconWithLabel({
    required this.iconData,
    required this.bgColor,
    required this.label,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  State<_InteractiveIconWithLabel> createState() =>
      _InteractiveIconWithLabelState();
}

class _InteractiveIconWithLabelState extends State<_InteractiveIconWithLabel> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) {
        setState(() => _isPressed = false);
        widget.onTap();
      },
      onTapCancel: () => setState(() => _isPressed = false),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedScale(
            scale: _isPressed ? 1.1 : 1.0,
            duration: const Duration(milliseconds: 100),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: widget.bgColor,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
                ],
              ),
              child: Center(
                child: Icon(
                  widget.iconData,
                  size: 28,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            widget.label,
            style: const TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}