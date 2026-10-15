import 'package:flutter/material.dart';

class SimpleScreen1 extends StatelessWidget {
  final VoidCallback onBack;

  const SimpleScreen1({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Container(
                height: 380,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFA8A0F0),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Center(
                  child: Icon(Icons.water, size: 180, color: Colors.white70),
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: ElevatedButton(
                  onPressed: onBack,
                  child: const Icon(Icons.arrow_back),
                ),
              ),
              Positioned(
                top: 150,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(22),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFF8A50),
                    ),
                    child: const Icon(Icons.play_arrow, size: 44, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Center(
              child: Text(
                'Secrets of Atlantis',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 14),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFFF8A50)),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Text(
                'Follow',
                style: TextStyle(
                  color: Color(0xFFFF8A50),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: const Color(0xFF3D2E66),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF7E5BC7),
                          ),
                          child: const Icon(Icons.person, color: Colors.white),
                        ),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Codin',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Host',
                              style: TextStyle(color: Colors.white70, fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.wifi_tethering, color: Color(0xFFFF8A50), size: 18),
                        SizedBox(width: 4),
                        Text(
                          'Live',
                          style: TextStyle(color: Color(0xFFFF8A50), fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                const Text(
                  'The Secrets of Atlantis podcast is designed for all fantasy enthusiasts, everything from debunking underwater...',
                  style: TextStyle(color: Colors.white70, fontSize: 13),
                ),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 18),
                        const SizedBox(width: 4),
                        const Text('4.8', style: TextStyle(color: Colors.white)),
                        const SizedBox(width: 4),
                        const Text('(10)',
                            style: TextStyle(color: Colors.white70, fontSize: 12)),
                        const SizedBox(width: 20),
                        Container(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                          decoration: BoxDecoration(
                            color: const Color(0xFF7E5BC7),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'Fantasy',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.headphones, color: Colors.white70, size: 20),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 30),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFFFD75E),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 90,
                  height: 40,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 2,
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                          ),
                          child: const Icon(Icons.person, size: 18, color: Colors.white),
                        ),
                      ),
                      Positioned(
                        left: 22,
                        top: 2,
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: const Icon(Icons.person, size: 18, color: Colors.white),
                        ),
                      ),
                      Positioned(
                        left: 44,
                        top: 2,
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purple,
                          ),
                          child: const Icon(Icons.person, size: 18, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  'Invite your friends to join',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}