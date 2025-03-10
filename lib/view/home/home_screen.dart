import 'package:eman/view/nintyname/ninty_name_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      // ✅ Custom AppBar with Background Color
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: AppBar(
          backgroundColor: Colors.green.shade800,
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(top: 16.h),
            child: Text(
              "আসসালামু আলাইকুম!",
              style: GoogleFonts.notoSansBengali(
                  fontSize: 22.sp, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          centerTitle: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ✅ Header Section
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: Colors.green.shade800,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.r)),
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
                                    fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w600),
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

            // ✅ Islamic Features Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFeatureCard(
                    title: "📖 আজকের কুরআন আয়াত",
                    subtitle: "“নিশ্চয়ই, কষ্টের সাথে স্বস্তি রয়েছে” - সূরা আল-ইনশিরাহ:৬",
                    onTap: () => Get.to(() => AllahNamesScreen()), // ✅ Navigate to Quran Verse
                  ),
                  SizedBox(height: 12.h),

                  _buildFeatureCard(
                    title: "🕌 ৯৯টি নাম",
                    subtitle: "আল্লাহর ৯৯টি নাম",
                    onTap: () => Get.to(() => AllahNamesScreen()), // ✅ Navigate to 99 Names Screen
                  ),
                  SizedBox(height: 12.h),

                  _buildFeatureCard(
                    title: "📅 ইসলামিক তারিখ",
                    subtitle: "২৭ শাবান ১৪৪৫ হিজরি",
                  ),
                  SizedBox(height: 12.h),

                  _buildFeatureCard(
                    title: "🕋 কিবলা দিক খুঁজুন",
                    subtitle: "কিবলা খুঁজতে কম্পাস ব্যবহার করুন",
                    onTap: () => Get.to(() => AllahNamesScreen()), // ✅ Navigate to Qibla Screen
                  ),
                  SizedBox(height: 12.h),

                  _buildFeatureCard(
                    title: "📜 আজকের হাদিস",
                    subtitle: "“তোমাদের মধ্যে সর্বোত্তম ব্যক্তি সেই, যে কুরআন শিক্ষা করে এবং অন্যকে শিক্ষা দেয়” - বুখারী",
                    onTap: () => Get.to(() => AllahNamesScreen()), // ✅ Navigate to Hadith Screen
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// ✅ Feature Card Widget with Tap Navigation
  Widget _buildFeatureCard({
    required String title,
    required String subtitle,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: Colors.white,
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.notoSansBengali(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    subtitle,
                    style: GoogleFonts.notoSansBengali(fontSize: 14.sp, color: Colors.black54),
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
