import 'package:eman/view/nintyname/ninty_name_screen.dart';
import 'package:eman/view/ramdan/ramadan_wishes_screen.dart';
import 'package:eman/view/ramdan/ramdan_dua_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D3A32), // ✅ Dark theme

      // ✅ Custom AppBar with Background Color
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          backgroundColor: Color(0xFF0D3A32),
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Text(
              "আসসালামু আলাইকুম!",
              style: GoogleFonts.notoSansBengali(
                fontSize: 22.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          centerTitle: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ✅ Header Section
              Container(
                
                decoration: BoxDecoration(
                  color: Color(0xFF0D3A32),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ঢাকা, বাংলাদেশ ▼",
                      style: GoogleFonts.notoSansBengali(fontSize: 14.sp, color: Colors.white70),
                    ),
                    SizedBox(height: 10.h),

                    // ✅ Ramadan Explore Section
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      padding: EdgeInsets.all(12.w),
                      child: Row(
                        children: [
                          Icon(Icons.nights_stay, color: Colors.yellow.shade700, size: 30.w),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "রমজান সম্পর্কে জানুন ✨",
                                  style: GoogleFonts.notoSansBengali(
                                    fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "একটি আধ্যাত্মিক জাগরণের যাত্রার সারমর্ম আবিষ্কার করুন।",
                                  style: GoogleFonts.notoSansBengali(fontSize: 12.sp, color: Colors.white70),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.play_circle_fill, color: Colors.white, size: 32.w),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.h),

              // ✅ Islamic Features Grid (3 items per row)
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // ✅ 3 items per row
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 1, // ✅ Square layout for better UI
                ),
                itemCount: features.length,
                itemBuilder: (context, index) {
                  final feature = features[index];
                  return _buildFeatureCard(
                    title: feature['title'],
                    icon: feature['icon'],
                    onTap: feature['onTap'],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// ✅ Feature Card Widget (Icons Above Text)
  Widget _buildFeatureCard({
    required String title,
    required IconData icon,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              spreadRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 28.w, color: Colors.white), // ✅ Icon Above
            SizedBox(height: 8.h),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSansBengali(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// ✅ Feature List
final List<Map<String, dynamic>> features = [
  {
    "title": "কুরআন আয়াত",
    "icon": Icons.book,
    "onTap": () => Get.to(() => AllahNamesScreen()),
  },
  {
    "title": "৯৯টি নাম",
    "icon": Icons.mosque,
    "onTap": () => Get.to(() => AllahNamesScreen()),
  },
  {
    "title": "রমজানের দোয়া",
    "icon": Icons.mood,
    "onTap": () => Get.to(() => RamadanDuaScreen()),
  },
  {
    "title": "রমজান বার্তা",
    "icon": Icons.chat,
    "onTap": () => Get.to(() => RamadanWishesScreen()),
  },
  {
    "title": "আজকের হাদিস",
    "icon": Icons.menu_book,
    "onTap": () => Get.to(() => AllahNamesScreen()),
  },
  {
    "title": "কিবলা দিক",
    "icon": Icons.compass_calibration,
    "onTap": () => Get.to(() => AllahNamesScreen()),
  },
];
