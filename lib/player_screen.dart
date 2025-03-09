import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PrayerScreen extends StatelessWidget {
  final List<Map<String, dynamic>> prayerTimes = [
    {"name": "Fajr", "time": "04:35AM - 05:40AM", "icon": Icons.wb_sunny},
    {"name": "Zuhar", "time": "12:35PM - 01:40PM", "icon": Icons.wb_sunny},
    {"name": "Asar", "time": "04:35PM - 05:40PM", "icon": Icons.wb_sunny},
    {"name": "Maghrib", "time": "06:45PM - 07:40PM", "icon": Icons.nights_stay},
    {"name": "Isha", "time": "08:00PM - 09:10PM", "icon": Icons.nights_stay},
  ];

  PrayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      // ✅ Custom AppBar with Background Color
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h), // ✅ Adjust height for better blend
        child: AppBar(
          backgroundColor: Colors.green.shade800,
          surfaceTintColor: Colors.transparent,
          elevation: 0, // ✅ Remove shadow for a smooth transition
          title: Padding(
            padding: EdgeInsets.only(top: 16.h), // ✅ Space for better alignment
            child: Text(
              "Prayer Time",
              style: GoogleFonts.poppins(fontSize: 22.sp, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          centerTitle: false,
        ),
      ),

      body: Column(
        children: [
          // ✅ Header with rounded bottom corners
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            decoration: BoxDecoration(
              color: Colors.green.shade800,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.r)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ✅ Prayer Time Box
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  padding: EdgeInsets.all(14.w),
                  child: Row(
                    children: [
                      Icon(Icons.access_time, color: Colors.white, size: 30.w),
                      SizedBox(width: 12.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Fajr Salat", style: GoogleFonts.poppins(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.bold)),
                          SizedBox(height: 2.h),
                          Text("05:40 AM", style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.white70)),
                          Text("1h 4m remaining", style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.white70)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20.h),

          // ✅ Prayer Times List
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemCount: prayerTimes.length,
              itemBuilder: (context, index) {
                var prayer = prayerTimes[index];

                return Container(
                  margin: EdgeInsets.only(bottom: 12.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 1,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Icon(prayer["icon"], color: Colors.yellow.shade700, size: 28.w),
                    title: Text(
                      prayer["name"],
                      style: GoogleFonts.poppins(fontSize: 17.sp, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      prayer["time"],
                      style: GoogleFonts.poppins(fontSize: 15.sp, color: Colors.black54),
                    ),
                    trailing: Icon(Icons.volume_up, color: Colors.green.shade800, size: 24.w),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
