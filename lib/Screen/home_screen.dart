import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Map<String, dynamic>> _drawerItems = [
    {'icon': Icons.star_outline, 'title': 'Rate app (play store)'},
    {'icon': Icons.share_outlined, 'title': 'Share app'},
    {'icon': Icons.color_lens_outlined, 'title': 'Colors'},
    {'icon': Icons.backup_outlined, 'title': 'Backup'},
    {'icon': Icons.archive_outlined, 'title': 'Archive'},
    {'icon': Icons.beach_access_outlined, 'title': 'Holiday'},
    {'icon': Icons.settings_outlined, 'title': 'Settings'},
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = Get.width;
    final screenHeight = Get.height;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF9B59B6),
                Color(0xFF8E44AD),
                Color(0xFF2980B9),
                Color(0xFF3498DB),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text(
          'Alarm',
          style: TextStyle(
            color: Colors.white,
            fontSize: screenWidth * 0.05,
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.alarm,
              color: Colors.white,
              size: screenWidth * 0.07,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: screenWidth * 0.07,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: screenWidth * 0.07,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu, color: Colors.white, size: screenWidth * 0.07),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('John Doe',
                  style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.bold)),
              accountEmail: Text('johndoe@example.com',
                  style: TextStyle(fontSize: screenWidth * 0.04)),
              currentAccountPicture: const CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://via.placeholder.com/150')),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _drawerItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(_drawerItems[index]['icon'],
                        size: screenWidth * 0.07, color: const Color(0xFF9B59B6)),
                    title: Text(_drawerItems[index]['title'],
                        style: TextStyle(
                            fontSize: screenWidth * 0.045,
                            fontWeight: FontWeight.bold)),
                    onTap: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF9B59B6),
                  Color(0xFF8E44AD),
                  Color(0xFF2980B9),
                  Color(0xFF3498DB)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.2),
              child: Text(
                "Tap the + button above to include a new alarm",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(2, 2),
                        blurRadius: 4)
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.1,
            right: screenWidth * 0.1,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color(0xFF9B59B6),
              child: Icon(Icons.add,
                  color: Colors.white, size: screenWidth * 0.07),
            ),
          ),
        ],
      ),
    );
  }
}
