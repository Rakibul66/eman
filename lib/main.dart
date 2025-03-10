import 'package:eman/player_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'view/home/home_screen.dart';


void main() {
  runApp(const IslamicApp());
}

class IslamicApp extends StatelessWidget {
  const IslamicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812), // Standard mobile size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "ইসলামিক অ্যাপ",
          theme: ThemeData(
            textTheme: GoogleFonts.notoSansBengaliTextTheme(),
            primaryColor: Colors.green.shade800,
          ),
          home: const MainScreen(),
        );
      },
    );
  }
}

// ✅ MainScreen to switch between Home and Prayer Time screens
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
     PrayerScreen(), // ✅ Ensure correct instance creation
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // Show selected screen

      // ✅ Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green.shade800,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 24.sp),
            label: "হোম", // Bangla Text
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time, size: 24.sp),
            label: "নামাজের সময়", // Bangla Text
          ),
        ],
      ),
    );
  }
}
