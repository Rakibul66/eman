import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D3A32),

      appBar: AppBar(
        backgroundColor: Color(0xFF0D3A32),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "সেটিংস",
          style: GoogleFonts.notoSansBengali(fontSize: 22.sp, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // ✅ App Logo & Title
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Column(
                children: [
                  Image.asset(
                    "assets/icons/app_icon.png", // Change this to your app logo
                    height: 70.h,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Haji Talk",
                    style: GoogleFonts.poppins(fontSize: 24.sp, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            ),

            // ✅ Settings List
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 16.h),

                  _buildSettingsTile(
                    title: "ভাষা",
                    subtitle: "Bangla",
                    icon: Icons.language,
                    onTap: () => print("Language Change"),
                  ),
                  SizedBox(height: 10.h),

                  _sectionTitle("সাধারণ"),
                  _buildSettingsTile(
                    title: "নামাজের সেটিংস",
                    icon: Icons.settings_suggest_rounded,
                    onTap: () => print("Prayer Settings"),
                  ),
                  SizedBox(height: 10.h),

                  _sectionTitle("অ্যাপ সম্পর্কিত"),
                  _buildSettingsTile(
                    title: "অ্যাপ সম্পর্কে",
                    icon: Icons.info_outline,
                    onTap: () => print("About App"),
                  ),
                  _buildSettingsTile(
                    title: "ডেভেলপারদের সাথে যোগাযোগ",
                    icon: Icons.code,
                    onTap: () => print("Contact Developer"),
                  ),
                  _buildSettingsTile(
                    title: "আমাদের রেটিং দিন",
                    icon: Icons.star_border,
                    onTap: () => print("Rate App"),
                  ),
                  _buildSettingsTile(
                    title: "অ্যাপটি শেয়ার করুন",
                    icon: Icons.share,
                    onTap: () => print("Share App"),
                  ),
                  _buildSettingsTile(
                    title: "আপডেটের জন্য চেক করুন",
                    subtitle: "ভার্সন: ২.০.৩",
                    icon: Icons.system_update_alt,
                    onTap: () => print("Check for Update"),
                  ),

                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// ✅ Section Title Widget
  Widget _sectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: GoogleFonts.notoSansBengali(fontSize: 16.sp, fontWeight: FontWeight.bold, color: Colors.grey.shade700),
        ),
      ),
    );
  }

  /// ✅ Settings Tile Widget
  Widget _buildSettingsTile({
    required String title,
    String? subtitle,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1)],
        ),
        child: Row(
          children: [
            Icon(icon, color: Color(0xFF0D3A32), size: 26.w),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.notoSansBengali(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle,
                      style: GoogleFonts.notoSansBengali(fontSize: 14.sp, color: Colors.grey.shade700),
                    ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.grey.shade700, size: 18.w),
          ],
        ),
      ),
    );
  }
}
