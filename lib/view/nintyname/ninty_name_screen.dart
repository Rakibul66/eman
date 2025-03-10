import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AllahNamesScreen extends StatelessWidget {
  final List<Map<String, String>> namesOfAllah = [
    {"arabic": "الله", "bangla": "১. আল্লাহ", "meaning": "সর্বশক্তিমান"},
    {"arabic": "الرحمن", "bangla": "২. আর-রহমান", "meaning": "পরম দয়ালু"},
    {"arabic": "الرحيم", "bangla": "৩. আর-রহীম", "meaning": "অতিশয়-মেহেরবান"},
    {"arabic": "الملك", "bangla": "৪. আল-মালিক", "meaning": "সর্বকর্তৃত্বময়"},
    {"arabic": "القدوس", "bangla": "৫. আল-কুদ্দুস", "meaning": "নিষ্পাপ, অতি পবিত্র"},
    {"arabic": "السلام", "bangla": "৬. আস-সালাম", "meaning": "শান্তি দানকারী"},
    {"arabic": "المؤمن", "bangla": "৭. আল-মুমিন", "meaning": "বিশ্বাস দানকারী"},
    {"arabic": "المهيمن", "bangla": "৮. আল-মুহাইমিন", "meaning": "রক্ষণাবেক্ষণকারী"},
    {"arabic": "العزيز", "bangla": "৯. আল-আজিজ", "meaning": "পরাক্রমশালী"},
    {"arabic": "الجبار", "bangla": "১০. আল-জাব্বার", "meaning": "অপরাজেয়"},
    {"arabic": "المتكبر", "bangla": "১১. আল-মুতাকাব্বির", "meaning": "গৌরবময়"},
    {"arabic": "الخالق", "bangla": "১২. আল-খালিক", "meaning": "সৃষ্টিকর্তা"},
    {"arabic": "البارئ", "bangla": "১৩. আল-বারি", "meaning": "উৎপাদনকারী"},
    {"arabic": "المصور", "bangla": "১৪. আল-মুসাওউইর", "meaning": "রূপদানকারী"},
    {"arabic": "الغفار", "bangla": "১৫. আল-গাফফার", "meaning": "অতিশয় ক্ষমাশীল"},
    {"arabic": "القهار", "bangla": "১৬. আল-ক্বাহহার", "meaning": "পরাক্রমশালী"},
    {"arabic": "الوهاب", "bangla": "১৭. আল-ওহ্হাব", "meaning": "অনুগ্রহকারী"},
    {"arabic": "الرزاق", "bangla": "১৮. আর-রজ্জাক", "meaning": "রিজিকদাতা"},
    {"arabic": "الفتاح", "bangla": "১৯. আল-ফাত্তাহ", "meaning": "বিজয়দানকারী"},
    {"arabic": "العليم", "bangla": "২০. আল-আলীম", "meaning": "সর্বজ্ঞ"},
    {"arabic": "القابض", "bangla": "২১. আল-ক্বাবিদ", "meaning": "সংকোচনকারী"},
    {"arabic": "الباسط", "bangla": "২২. আল-বাসিত", "meaning": "প্রসারণকারী"},
    {"arabic": "الخافض", "bangla": "২৩. আল-খাফিদ", "meaning": "অপমানকারী"},
    {"arabic": "الرافع", "bangla": "২৪. আর-রাফি", "meaning": "উন্নীতকারী"},
    {"arabic": "المعز", "bangla": "২৫. আল-মু'ইজ্জ", "meaning": "সম্মানদাতা"},
    {"arabic": "المذل", "bangla": "২৬. আল-মুদিল", "meaning": "অসম্মানকারী"},
    {"arabic": "السميع", "bangla": "২৭. আস-সামি", "meaning": "শ্রবণকারী"},
    {"arabic": "البصير", "bangla": "২৮. আল-বাসির", "meaning": "দর্শনকারী"},
    {"arabic": "الحكم", "bangla": "২৯. আল-হাকাম", "meaning": "ফয়সালাকারী"},
    {"arabic": "العدل", "bangla": "৩০. আল-আদ্ল", "meaning": "ন্যায়পরায়ণ"},
    {"arabic": "اللطيف", "bangla": "৩১. আল-লতিফ", "meaning": "সুবিনয়"},
    {"arabic": "الخبير", "bangla": "৩২. আল-খাবির", "meaning": "সর্বজ্ঞ"},
    {"arabic": "الحليم", "bangla": "৩৩. আল-হালিম", "meaning": "অতিশয় ধৈর্যশীল"},
    {"arabic": "العظيم", "bangla": "৩৪. আল-আজিম", "meaning": "সুমহান"},
    {"arabic": "الغفور", "bangla": "৩৫. আল-গাফুর", "meaning": "ক্ষমাশীল"},
    {"arabic": "الشكور", "bangla": "৩৬. আশ-শাকুর", "meaning": "গুণগ্রাহী"},
    {"arabic": "العلي", "bangla": "৩৭. আল-আলি", "meaning": "উচ্চ মর্যাদাশীল"},
    {"arabic": "الكبير", "bangla": "৩৮. আল-কবির", "meaning": "মহান"},
    {"arabic": "الحفيظ", "bangla": "৩৯. আল-হাফিজ", "meaning": "সংরক্ষণকারী"},
    {"arabic": "المقيت", "bangla": "৪০. আল-মুক্বিত", "meaning": "রক্ষাকারী"},
    {"arabic": "الحسيب", "bangla": "৪১. আল-হাসিব", "meaning": "হিসাব গ্রহণকারী"},
    {"arabic": "الجليل", "bangla": "৪২. আল-জালিল", "meaning": "সুমহান"},
    {"arabic": "الكريم", "bangla": "৪৩. আল-কারিম", "meaning": "উদার"},
    {"arabic": "الرقيب", "bangla": "৪৪. আর-রকিব", "meaning": "পর্যবেক্ষণকারী"},
    {"arabic": "المجيب", "bangla": "৪৫. আল-মুজিব", "meaning": "সাড়া দানকারী"},
    {"arabic": "الواسع", "bangla": "৪৬. আল-ওয়াসি", "meaning": "সর্বব্যাপী"},
    {"arabic": "الحكيم", "bangla": "৪৭. আল-হাকিম", "meaning": "প্রজ্ঞাময়"},
    {"arabic": "الودود", "bangla": "৪৮. আল-ওয়াদুদ", "meaning": "পরম প্রেমময়"},
    {"arabic": "المجيد", "bangla": "৪৯. আল-মাজিদ", "meaning": "সুমহান"},
  {"arabic": "المعيد", "bangla": "৫০. আল-মুইদ", "meaning": "পুনরায় জীবনদানকারী"},
  {"arabic": "المحيي", "bangla": "৫১. আল-মুহই", "meaning": "জীবন দানকারী"},
  {"arabic": "المميت", "bangla": "৫২. আল-মুমিত", "meaning": "মৃত্যু দানকারী"},
  {"arabic": "الحي", "bangla": "৫৩. আল-হাই", "meaning": "সর্বদা জীবিত"},
  {"arabic": "القيوم", "bangla": "৫৪. আল-ক্বাইয়ুম", "meaning": "পরম অস্তিত্বশীল"},
  {"arabic": "الواجد", "bangla": "৫৫. আল-ওয়াজিদ", "meaning": "সমৃদ্ধশালী"},
  {"arabic": "الماجد", "bangla": "৫৬. আল-মাজিদ", "meaning": "সম্মানিত"},
  {"arabic": "الواحد", "bangla": "৫৭. আল-ওয়াহিদ", "meaning": "এক ও অদ্বিতীয়"},
  {"arabic": "الاحد", "bangla": "৫৮. আল-আহাদ", "meaning": "অদ্বিতীয়"},
  {"arabic": "الصمد", "bangla": "৫৯. আস-সামাদ", "meaning": "অবিচল, সকলের অবলম্বন"},
  {"arabic": "القادر", "bangla": "৬০. আল-কাদির", "meaning": "সর্বশক্তিমান"},
  {"arabic": "المقتدر", "bangla": "৬১. আল-মুক্বতাদির", "meaning": "সর্বাধিপতি"},
  {"arabic": "المقدم", "bangla": "৬২. আল-মুক্বাদ্দিম", "meaning": "অগ্রসরকারী"},
  {"arabic": "المؤخر", "bangla": "৬৩. আল-মুআখখির", "meaning": "পিছনে সরিয়ে দেওয়া"},
  {"arabic": "الأول", "bangla": "৬৪. আল-আউওয়াল", "meaning": "সর্বপ্রথম"},
  {"arabic": "الأخر", "bangla": "৬৫. আল-আখির", "meaning": "সর্বশেষ"},
  {"arabic": "الظاهر", "bangla": "৬৬. আজ-জাহির", "meaning": "সর্বজ্ঞ"},
  {"arabic": "الباطن", "bangla": "৬৭. আল-বাতিন", "meaning": "অদৃশ্য"},
  {"arabic": "الوالي", "bangla": "৬৮. আল-ওয়ালি", "meaning": "সকল বিষয়ের অভিভাবক"},
  {"arabic": "المتعالي", "bangla": "৬৯. আল-মুতাআলি", "meaning": "পরম শ্রেষ্ঠ"},
  {"arabic": "البر", "bangla": "৭০. আল-বার", "meaning": "অত্যন্ত দয়ালু"},
  {"arabic": "التواب", "bangla": "৭১. আত-তাওয়াব", "meaning": "তওবা গ্রহণকারী"},
  {"arabic": "المنتقم", "bangla": "৭২. আল-মুনতাকিম", "meaning": "প্রতিশোধ গ্রহণকারী"},
  {"arabic": "العفو", "bangla": "৭৩. আল-আফউ", "meaning": "পরম ক্ষমাশীল"},
  {"arabic": "الرؤوف", "bangla": "৭৪. আর-রউফ", "meaning": "অতিশয় দয়াবান"},
  {"arabic": "مالك الملك", "bangla": "৭৫. মালিকুল-মুলক", "meaning": "সর্বময় ক্ষমতার অধিকারী"},
  {"arabic": "ذو الجلال والإكرام", "bangla": "৭৬. জুল-জালালি ওয়াল-ইকরাম", "meaning": "মহিমান্বিত"},
  {"arabic": "المقسط", "bangla": "৭৭. আল-মুক্বসিত", "meaning": "ন্যায়পরায়ণ"},
  {"arabic": "الجامع", "bangla": "৭৮. আল-জামি", "meaning": "একত্রকারী"},
  {"arabic": "الغني", "bangla": "৭৯. আল-গনী", "meaning": "অত্যন্ত সম্পদশালী"},
  {"arabic": "المغني", "bangla": "৮০. আল-মুগনি", "meaning": "অন্যকে অভাবমুক্তকারী"},
  {"arabic": "المانع", "bangla": "৮১. আল-মানি", "meaning": "প্রতিরোধকারী"},
  {"arabic": "الضار", "bangla": "৮২. আদ-দার", "meaning": "ক্ষতিসাধনকারী"},
  {"arabic": "النافع", "bangla": "৮৩. আন-নাফি", "meaning": "উপকারকারী"},
  {"arabic": "النور", "bangla": "৮৪. আন-নূর", "meaning": "জ্যোতির্ময়"},
  {"arabic": "الهادي", "bangla": "৮৫. আল-হাদি", "meaning": "পথপ্রদর্শক"},
  {"arabic": "البديع", "bangla": "৮৬. আল-বাদি", "meaning": "সৃজনশীল"},
  {"arabic": "الباقي", "bangla": "৮৭. আল-বাকি", "meaning": "চিরস্থায়ী"},
  {"arabic": "الوارث", "bangla": "৮৮. আল-ওয়ারিস", "meaning": "উত্তরাধিকারী"},
  {"arabic": "الرشيد", "bangla": "৮৯. আর-রশিদ", "meaning": "সঠিক পথ প্রদর্শক"},
  {"arabic": "الصبور", "bangla": "৯০. আস-সাবুর", "meaning": "অত্যন্ত ধৈর্যশীল"},
  {"arabic": "المغيث", "bangla": "৯১. আল-মুগিস", "meaning": "সহায়তাকারী"},
  {"arabic": "الشافي", "bangla": "৯২. আশ-শাফি", "meaning": "রোগমুক্তকারী"},
  {"arabic": "الشهيد", "bangla": "৯৩. আশ-শাহিদ", "meaning": "সর্বত্র উপস্থিত"},
  {"arabic": "الكريم", "bangla": "৯৪. আল-কারিম", "meaning": "পরম দয়ালু"},
  {"arabic": "الواسع", "bangla": "৯৫. আল-ওয়াসি", "meaning": "সর্বব্যাপী"},
  {"arabic": "المحسن", "bangla": "৯৬. আল-মুহসিন", "meaning": "কল্যাণকর"},
  {"arabic": "الجواد", "bangla": "৯৭. আল-জাওয়াদ", "meaning": "দাতা"},
  {"arabic": "المحيط", "bangla": "৯৮. আল-মুহিত", "meaning": "সর্বজ্ঞ"},
  {"arabic": "العدل", "bangla": "৯৯. আল-আদল", "meaning": "সর্বশ্রেষ্ঠ ন্যায়পরায়ণ"},
  ];

   AllahNamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C2A28), // Dark Green Background
      appBar: AppBar(
        backgroundColor: Color(0xFF0C2A28),
        title: Text("আল্লাহর ৯৯টি নাম",
            style: GoogleFonts.poppins(
                fontSize: 22.sp, fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: ListView.builder(
          itemCount: namesOfAllah.length,
          itemBuilder: (context, index) {
            var name = namesOfAllah[index];

            return Container(
              margin: EdgeInsets.symmetric(vertical: 6.h),
              decoration: BoxDecoration(
                color: Color(0xFF083B3A), // Darker Background for List Items
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    child: Text(
                      name["arabic"]!,
                      style: GoogleFonts.amiri(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textDirection: TextDirection.rtl, // Right-to-left Arabic
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.w),
                    color: Colors.orange.shade700,
                    child: Text(
                      name["bangla"]!,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Text(
                      name["meaning"]!,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
