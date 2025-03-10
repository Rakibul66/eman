import 'package:eman/player_screen.dart';
import 'package:eman/view/settings/setting_screen.dart';
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



class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  late AnimationController _animationController;
  late Animation<double> _animation;

  final List<Widget> _screens = [
    const HomeScreen(),
     PrayerScreen(), // ✅ Ensure correct instance creation
     SettingsScreen()
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300), // ✅ Smooth animation duration
    );
    _animation = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  void _onItemTapped(int index) {
    if (_selectedIndex != index) {
      _animationController.forward().then((_) => _animationController.reverse());
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // ✅ Show selected screen

      // ✅ Custom Animated Bottom Navigation
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFF0D3A32),
          
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 2),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed, // ✅ Smooth animation
          items: [
            _buildAnimatedNavItem(icon: Icons.home, label: "হোম", index: 0),
            _buildAnimatedNavItem(icon: Icons.access_time, label: "নামাজের সময়", index: 1),
            _buildAnimatedNavItem(icon: Icons.settings, label: "সেটিংস", index: 2),
          ],
          selectedLabelStyle: GoogleFonts.notoSansBengali(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: GoogleFonts.notoSansBengali(
            fontSize: 12.sp,
            color: Colors.white70,
          ),
        ),
      ),
    );
  }

  /// ✅ Animated Bottom Navigation Item
  BottomNavigationBarItem _buildAnimatedNavItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Transform.scale(
            scale: _selectedIndex == index ? _animation.value : 1.0,
            child: Icon(icon, size: 28.sp),
          );
        },
      ),
      label: label,
    );
  }
}