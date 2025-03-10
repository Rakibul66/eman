import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RamadanDuaScreen extends StatefulWidget {
  @override
  _RamadanDuaScreenState createState() => _RamadanDuaScreenState();
}

class _RamadanDuaScreenState extends State<RamadanDuaScreen> {
  bool showIftarDua = false; // ✅ Toggle Between Roza Niyyat & Iftar Dua

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D3A32), // ✅ Dark Green Background
      appBar: AppBar(
        backgroundColor: Color(0xFF0D3A32),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "মাহে রমজানের দোয়া",
          style: GoogleFonts.notoSansBengali(fontSize: 20.sp, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ✅ Toggle Buttons
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF11594A),
                borderRadius: BorderRadius.circular(10.r),
              ),
              padding: EdgeInsets.all(4.w),
              child: Row(
                children: [
                  _buildToggleButton(
                    text: "রোজার নিয়ত",
                    isSelected: !showIftarDua,
                    onTap: () => setState(() => showIftarDua = false),
                  ),
                  _buildToggleButton(
                    text: "ইফতারের দোয়া",
                    isSelected: showIftarDua,
                    onTap: () => setState(() => showIftarDua = true),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),

            // ✅ Roza Niyyat / Iftar Dua Content
            _buildDuaCard(showIftarDua),
          ],
        ),
      ),
    );
  }

  /// ✅ Toggle Button UI
  Widget _buildToggleButton({required String text, required bool isSelected, required VoidCallback onTap}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected ? Colors.orange : Colors.transparent,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Text(
            text,
            style: GoogleFonts.notoSansBengali(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  /// ✅ Dua Content UI
  Widget _buildDuaCard(bool isIftarDua) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Color(0xFF11594A),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ✅ Arabic Text
          Text(
            isIftarDua
                ? "اللهم لك صمت و على رزقك أفطرت"
                : "نَوَيْتُ أَنْ أَصُوْمَ غَدًا مِنْ شَهْرِ رَمَضَانَ المُبَارَكِ فَرْضًا لَكَ يَا اللَّهُ فَتَقَبَّلْ مِنِّي إِنَّكَ السَّمِيعُ الْعَلِيمُ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22.sp, color: Colors.orange, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12.h),

          // ✅ Bangla Pronunciation
          Text(
            isIftarDua
                ? "বাংলা উচ্চারণ: আল্লাহুম্মা সুমতু লাকা, ওয়া তাওয়াক্কালতু আ’লা রিজক্বিকা, ওয়া আফতারতু বিরাহমাতিকা ইয়া আরহামার রাহিমিন।"
                : "বাংলা উচ্চারণ: নাওয়াইতু আন আছুমা গাদাম মিন শাহরি রামাদ্বানাল মুবারাকি ফারদ্বাল্লহা ইয়া আল্লাহু ফাতাক্বাব্বাল মিন্নী ইন্নাকা আনতাস সামীউল আলীম।",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSansBengali(fontSize: 16.sp, color: Colors.white),
          ),
          SizedBox(height: 10.h),

          // ✅ Bangla Meaning
          Text(
            isIftarDua
                ? "বাংলা অর্থ: হে আল্লাহ পাক! আমি আপনারই সন্তুষ্টির জন্য রোযা রেখেছি এবং আপনারই দোয়া রিযিক্ব দ্বারা ইফতার করেছি।"
                : "বাংলা অর্থ: হে আল্লাহ পাক! আপনার সন্তুষ্টির জন্য আগামীকালের রমজান শরীফ-এর ফরয রোযা রাখার নিয়ত করেছি। আমার তরফ থেকে আপনি তা কবুল করুন। নিশ্চয়ই আপনি সর্বশ্রোতা, সর্বজ্ঞ।",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSansBengali(fontSize: 14.sp, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
