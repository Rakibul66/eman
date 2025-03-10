import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

class RamadanWishesScreen extends StatelessWidget {
  final List<String> wishes = [
    "🌙 পবিত্র মাহে রমজান আমাদের জীবনে বয়ে আনুক অফুরন্ত রহমত ও বরকত। রমজান মোবারক! 🤲",
    "🕌 রমজানের পবিত্র আলো আমাদের জীবনকে আলোকিত করুক, আমিন। শুভ রমজান! ✨",
    "📖 আল্লাহ আমাদের সব দোয়া কবুল করুন এবং আমাদের জীবনে সুখ-শান্তি দিন। রমজান মোবারক! 🕋",
    "🌟 আল্লাহর রহমত ও দয়া আপনার উপর বর্ষিত হোক। শুভ মাহে রমজান! 🌙",
    "🤲 আল্লাহ আমাদের গুনাহ মাফ করুন এবং জান্নাত দান করুন, আমিন! রমজান মোবারক! 💫",
    "🕋 রমজানের বরকত আমাদের অন্তরে প্রশান্তি ও তৃপ্তি নিয়ে আসুক। রমজান মোবারক! 🌿",
    "✨ রমজানের আলোয় আলোকিত হোক আমাদের জীবন, পবিত্রতা ও কল্যাণে ভরে উঠুক হৃদয়। শুভ রমজান! 🌙",
    "📿 আসুন আমরা বেশি বেশি ইবাদত করি এবং আল্লাহর রহমত প্রার্থনা করি। রমজান মোবারক! 🕌",
  ];

   RamadanWishesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D3A32),
      appBar: AppBar(
        backgroundColor: Color(0xFF0D3A32),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "রমজানের শুভেচ্ছা বার্তা",
          style: GoogleFonts.notoSansBengali(fontSize: 20.sp, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: ListView.builder(
          itemCount: wishes.length,
          itemBuilder: (context, index) {
            return _buildWishCard(wishes[index],context);
          },
        ),
      ),
    );
  }

  Widget _buildWishCard(String wish, BuildContext context) {
  return Container(
    margin: EdgeInsets.only(bottom: 12.h),
    padding: EdgeInsets.all(14.w),
    decoration: BoxDecoration(
      color: Color(0xFF11594A),
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
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          wish,
          style: GoogleFonts.notoSansBengali(fontSize: 16.sp, color: Colors.white),
        ),
        SizedBox(height: 10.h),

        // ✅ Copy & Share Buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Copy Button
            GestureDetector(
              onTap: () {
                Clipboard.setData(ClipboardData(text: wish));
                _showSnackBar(context, "কপি করা হয়েছে!"); // ✅ Pass context
              },
              child: Row(
                children: [
                  Icon(Icons.copy, color: Colors.white70, size: 20.w),
                  SizedBox(width: 5.w),
                  Text("কপি করুন", style: TextStyle(color: Colors.white70, fontSize: 14.sp)),
                ],
              ),
            ),

            // Share Button
            GestureDetector(
              onTap: () {
                Share.share(wish);
              },
              child: Row(
                children: [
                  Icon(Icons.share, color: Colors.white70, size: 20.w),
                  SizedBox(width: 5.w),
                  Text("শেয়ার করুন", style: TextStyle(color: Colors.white70, fontSize: 14.sp)),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}


void _showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: GoogleFonts.notoSansBengali(fontSize: 14.sp),
      ),
      backgroundColor: Colors.green,
    ),
  );
}}

/// ✅ Global Navigator Key (Required for Showing SnackBar)
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
