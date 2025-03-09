import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      // ✅ Custom AppBar with Background Color
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h), // ✅ Adjust height for better blend
        child: AppBar(
          backgroundColor: Colors.green.shade800,
          elevation: 0, // ✅ Remove shadow for a smooth transition
          title: Padding(
            padding: EdgeInsets.only(top: 16.h), // ✅ Space for better alignment
            child: Text(
              "Assalamualaikum!",
              style: GoogleFonts.poppins(fontSize: 22.sp, color: Colors.white, fontWeight: FontWeight.bold),
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
                                "Explore Ramadan ✨",
                                style: GoogleFonts.poppins(
                                    fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Discover the essence of a journey of spiritual awakening.",
                                style: GoogleFonts.poppins(fontSize: 12.sp, color: Colors.white70),
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
                    title: "📖 Daily Quran Verse",
                    subtitle: "“Indeed, with hardship comes ease” - Surah Al-Inshirah:6",
                  ),
                  SizedBox(height: 12.h),

                  _buildFeatureCard(
                    title: "🕌 Next Prayer Time",
                    subtitle: "Asr - 4:35 PM",
                  ),
                  SizedBox(height: 12.h),

                  _buildFeatureCard(
                    title: "📅 Islamic Date",
                    subtitle: "27th Shaban 1445 AH",
                  ),
                  SizedBox(height: 12.h),

                  _buildFeatureCard(
                    title: "🕋 Find Qibla Direction",
                    subtitle: "Use Compass to find the Qibla direction",
                  ),
                  SizedBox(height: 12.h),

                  _buildFeatureCard(
                    title: "📜 Hadith of the Day",
                    subtitle:
                        "“The best among you are those who learn the Qur’an and teach it” - Bukhari",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// ✅ Feature Card Widget for Islamic Features
  Widget _buildFeatureCard({required String title, required String subtitle}) {
    return Container(
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
                  style: GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.h),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
