import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AllahNamesScreen extends StatelessWidget {

  //https://www.hadithbd.com/99namesofallah/ 
  //from here correct 50-99 all arabic left side later
  final List<Map<String, String>> namesOfAllah = [
    {"arabic": "الله", "bangla": "১. আল্লাহ", "meaning": "সর্বশক্তিমান"},
    {"arabic": "الرحمن", "bangla": "২. আর-রহমান", "meaning": "পরম দয়ালু"},
    {"arabic": "الرحيم", "bangla": "৩. আর-রহীম", "meaning": "অতিশয়-মেহেরবান"},
    {"arabic": "الملك", "bangla": "৪. আল-মালিক", "meaning": "সর্বকর্তৃত্বময়"},
    {"arabic": "القدوس", "bangla": "৫. আল-কুদ্দুস", "meaning": "নিষ্পাপ, অতি পবিত্র"},
    {"arabic": "السلام", "bangla": "৬. আস-সালাম", "meaning": "শান্তি দানকারী"},
    {"arabic": "المؤمن", "bangla": "৭. আল-মুমিন", "meaning": "নিরাপত্তা ও ঈমান দানকারী, জামিনদার"},
    {"arabic": "المهيمن", "bangla": "৮. আল-মুহাইমিন", "meaning": "রক্ষণাবেক্ষণকারী"},
    {"arabic": "العزيز", "bangla": "৯. আল-আজিজ", "meaning": "পরাক্রমশালী"},
    {"arabic": "الجبار", "bangla": "১০. আল-জাব্বার", "meaning": "অপরাজেয়"},
    {"arabic": "المتكبر", "bangla": "১১. আল-মুতাকাব্বির", "meaning": "গৌরবময়"},
    {"arabic": "الخالق", "bangla": "১২. আল-খালিক", "meaning": "সৃষ্টিকর্তা"},
    {"arabic": "البارئ", "bangla": "১৩. আল-বারি", "meaning": "উৎপাদনকারী"},
    {"arabic": "المصور", "bangla": "১৪. আল-মুসাওউইর", "meaning": "রূপদানকারী"},
    {"arabic": "الغفار", "bangla": "১৫. আল-গফ্ফার", "meaning": "অতিশয় ক্ষমাশীল"},
    {"arabic": "القهار", "bangla": "১৬. আল-ক্বাহার", "meaning": "পরাক্রমশালী"},
    {"arabic": "الوهاب", "bangla": "১৭. আল-ওহ্হাব", "meaning": "অনুগ্রহকারী"},
    {"arabic": "الرزاق", "bangla": "১৮. আর-রজ্জাক", "meaning": "রিজিকদাতা"},
    {"arabic": "الفتاح", "bangla": "১৯. আল-ফাত্তাহ", "meaning": "বিজয়দানকারী"},
    {"arabic": "العليم", "bangla": "২০. আল-আলীম", "meaning": "সর্বজ্ঞ"},
    {"arabic": "القابض", "bangla": "২১. আল-ক্ববিদ্ব", "meaning": "নিয়ন্ত্রণকারী, সরল পথ প্রদর্শনকারী"},
    {"arabic": "الباسط", "bangla": "২২. আল-বাসিত", "meaning": "প্রসারণকারী"},
    {"arabic": "الخافض", "bangla": "২৩. আল-খফিদ্বু", "meaning": "অপমানকারী"},
    {"arabic": "الرافع", "bangla": "২৪. আর-রফীই'", "meaning": "উন্নীতকারী"},
    {"arabic": "المعز", "bangla": "২৫. আল-মু'ইজ্জ", "meaning": "সম্মানদাতা"},
    {"arabic": "المذل", "bangla": "২৬. আল-মুদ্বি'ল্লু", "meaning": "অসম্মানকারী"},
    {"arabic": "السميع", "bangla": "২৭. আস্-সামিই", "meaning": "শ্রবণকারী"},
    {"arabic": "البصير", "bangla": "২৮. আল-বাছীর", "meaning": "দর্শনকারী"},
    {"arabic": "الحكم", "bangla": "২৯. আল-হাকাম", "meaning": "ফয়সালাকারী"},
    {"arabic": "العدل", "bangla": "৩০. আল-আদ্ল", "meaning": "ন্যায়পরায়ণ"},
    {"arabic": "اللطيف", "bangla": "৩১. আল-লাতীফ", "meaning": "সুবিনয়"},
    {"arabic": "الخبير", "bangla": "৩২. আল-খ'বীর", "meaning": "সর্বজ্ঞ"},
    {"arabic": "الحليم", "bangla": "৩৩. আল-হা'লীম", "meaning": "অতিশয় ধৈর্যশীল"},
    {"arabic": "العظيم", "bangla": "৩৪. আল-আ'জীম", "meaning": "সুমহান"},
    {"arabic": "الغفور", "bangla": "৩৫. আল-গফুর", "meaning": "ক্ষমাশীল"},
    {"arabic": "الشكور", "bangla": "৩৬. আশ-শাকুর", "meaning": "গুণগ্রাহী"},
    {"arabic": "العلي", "bangla": "৩৭. আল-আ'লিইউ", "meaning": "উচ্চ মর্যাদাশীল"},
    {"arabic": "الكبير", "bangla": "৩৮. আল-কাবিইর", "meaning": "মহান"},
    {"arabic": "الحفيظ", "bangla": "৩৯. আল-হা'ফীজ", "meaning": "সংরক্ষণকারী"},
    {"arabic": "المقيت", "bangla": "৪০. আল-মুক্বীত", "meaning": "রক্ষাকারী"},
    {"arabic": "الحسيب", "bangla": "৪১. আল-হাসিব", "meaning": "হিসাব গ্রহণকারী"},
    {"arabic": "الجليل", "bangla": "৪২. আল-জালিল", "meaning": "সুমহান"},
    {"arabic": "الكريم", "bangla": "৪৩. আল-কারিম", "meaning": "উদার"},
    {"arabic": "الرقيب", "bangla": "৪৪. আর-রক্বীব", "meaning": "পর্যবেক্ষণকারী"},
    {"arabic": "المجيب", "bangla": "৪৫. আল-মুজীব", "meaning": "সাড়া দানকারী"},
    {"arabic": "الواسع", "bangla": "৪৬. আল-ওয়াসি", "meaning": "সর্বব্যাপী"},
    {"arabic": "الحكيم", "bangla": "৪৭. আল-হাকীম", "meaning": "প্রজ্ঞাময়"},
    {"arabic": "الودود", "bangla": "৪৮. আল-ওয়াদুদ", "meaning": "পরম প্রেমময়"},
    {"arabic": "المجيد", "bangla": "৪৯. আল-মাজীদ", "meaning": "সুমহান"},
    {"arabic": "الباعث", "bangla": "৫০. আল-বাই'ছ", "meaning": "পুনুরুজ্জীবিতকারী"},
    {"arabic": "المحيي", "bangla": "৫১.  আশ্-শাহীদ", "meaning": "সর্বজ্ঞ-স্বাক্ষী, প্রত্যক্ষদর্শী"},
    {"arabic": "المميت", "bangla": "৫২. আল-হা'ক্ব", "meaning": "রম সত্য"},
    {"arabic": "الحي", "bangla": "৫৩. আল-ওয়াকিল", "meaning": "পরম নির্ভরযোগ্য কর্ম-সম্পাদনকারী"},
    {"arabic": "القيوم", "bangla": "৫৪. আল-ক্বউইউ", "meaning": "রম-শক্তির-অধিকারী"},
    {"arabic": "الواجد", "bangla": "৫৫. আল-মাতীন", "meaning": "সুদৃঢ়, সুস্থির"},
    {"arabic": "الماجد", "bangla": "৫৬. আল-ওয়ালিইউ", "meaning": "অভিভাবক ও সাহায্যকারী"},
    {"arabic": "الواحد", "bangla": "৫৭. আল-হা'মীদ", "meaning": "সকল প্রশংসার অধিকারী"},
    {"arabic": "الاحد", "bangla": "৫৮. আল-মুহছী", "meaning": "সকল সৃষ্টির ব্যপারে অবগত"},
    {"arabic": "الصمد", "bangla": "৫৯. আল-মুব্দি'", "meaning": "প্রথমবার-সৃষ্টিকর্তা"},
    {"arabic": "القادر", "bangla": "৬০. আল-মুঈ'দ", "meaning": "পুনরায়-সৃষ্টিকর্তা"},
    {"arabic": "المقتدر", "bangla": "৬১. আল-মুহ'য়ী", "meaning": "জীবন-দানকারী"},
    {"arabic": "المقدم", "bangla": "৬২. আল-মুমীত", "meaning": "মৃত্যু-দানকারী"},
    {"arabic": "المؤخر", "bangla": "৬৩. আল-হাইয়্যু", "meaning": "চিরঞ্জীব"},
    {"arabic": "الأول", "bangla": "৬৪. আল-ক্বাইয়্যুম", "meaning": "সমস্তকিছুর ধারক ও সংরক্ষণকারী"},
    {"arabic": "الأخر", "bangla": "৬৫. আল-ওয়াজিদ", "meaning": "অফুরন্ত ভান্ডারের অধিকারী"},
    {"arabic": "الظاهر", "bangla": "৬৬. আল-মুহীত", "meaning": "পরিবেষ্টনকারী"},
    {"arabic": "الباطن", "bangla": "৬৭.আল-ওয়াহি'দ", "meaning": "এক ও অদ্বিতীয়"},
    {"arabic": "الوالي", "bangla": "৬৮. আছ্-ছমাদ", "meaning": "অমুখাপেক্ষী,অবিনশ্বর"},
    {"arabic": "المتعالي", "bangla": "৬৯. আল-ক্বদির", "meaning": "সর্বশক্তিমান, মহা ক্ষমতাধর"},
    {"arabic": "البر", "bangla": "৭০. আল-মুক্ব্তাদির", "meaning": "নিরঙ্কুশ-সিদ্বান্তের-অধিকারী"},
    {"arabic": "التواب", "bangla": "৭১. আল-মুক্বদ্দিম", "meaning": "অগ্রসারক, সর্বাগ্রে সহায়তা প্রদানকারী"},
    {"arabic": "المنتقم", "bangla": "৭২. আল-মুয়াক্খির", "meaning": "অবকাশ দানকারী"},
    {"arabic": "العفو", "bangla": "৭৩. আল-আউয়াল", "meaning": "অনাদি, প্রথম"},
    {"arabic": "الرؤوف", "bangla": "৭৪. আল-আখির", "meaning": "অনন্ত, সর্বশেষ"},
    {"arabic": "مالك الملك", "bangla": "৭৫. আজ-জ'হির", "meaning": "সম্পূর্নরূপে-প্রকাশিত, প্রকাশ্য"},
    {"arabic": "ذو الجلال والإكرام", "bangla": "৭৬. আল-বাত্বিন", "meaning": "দৃষ্টি হতে অদৃশ্য, গোপন"},
    {"arabic": "المقسط", "bangla": "৭৭. আল-ওয়ালি", "meaning": "সমস্ত কিছুর অভিভাবক"},
    {"arabic": "الجامع", "bangla": "৭৮. আল-মুতাআ'লি", "meaning": "সৃষ্টির গুনাবলীর উর্দ্ধে"},
    {"arabic": "الغني", "bangla": "৭৯.আল-বার্", "meaning": "পরম-উপকারী"},
    {"arabic": "المغني", "bangla": "৮০. আত্-তাওয়াব", "meaning": "তাওবার তাওফিক দানকারী এবং কবুলকারী"},
    {"arabic": "المانع", "bangla": "৮১. আল-মুনতাক্বিম", "meaning": "প্রতিশোধ-গ্রহণকারী"},
    {"arabic": "الضار", "bangla": "৮২. আল-আ'ফঊ", "meaning": "পরম-উদার, শাস্তি মউকুফকারী"},
    {"arabic": "النافع", "bangla": "৮৩. আর-রউফ", "meaning": "পরম-স্নেহশীল, সদয়, সমবেদনা প্রকাশকারী"},
    {"arabic": "النور", "bangla": "৮৪. মালিকুল-মুলক", "meaning": "সমগ্র জগতের বাদশাহ্"},
    {
      "arabic": "الهادي",
      "bangla": "৮৫. যুল-জালালি-ওয়াল-ইকরাম",
      "meaning": "মহিমান্বিত ও দয়াবান সত্তা, মহা মর্যাদাবান"
    },
    {"arabic": "البديع", "bangla": "৮৬. আল-মুক্ব্সিত", "meaning": "হকদারের হক-আদায়কারী"},
    {"arabic": "الباقي", "bangla": "৮৭. আল-জামিই'", "meaning": "একত্রকারী, সমবেতকারী"},
    {"arabic": "الوارث", "bangla": "৮৮. আল-গণিই", "meaning": "অমুখাপেক্ষী ধনী"},
    {"arabic": "الرشيد", "bangla": "৮৯. আল-মুগণিই", "meaning": "পরম-অভাবমোচনকারী, সমৃদ্ধকারী"},
    {"arabic": "الصبور", "bangla": "৯০. আল-মানিই", "meaning": "অকল্যাণরোধক, প্রতিরোধকারী, রক্ষাকর্তা"},
    {"arabic": "المغيث", "bangla": "৯১. আয্-যর", "meaning": "ক্ষতিসাধনকারী, যন্ত্রনাদানকারী"},
    {"arabic": "الشافي", "bangla": "৯২. আন্-নাফিই'", "meaning": "কল্যাণকারী, অনুগ্রাহক, উপকারকারী, হিতকারী"},
    {"arabic": "الشهيد", "bangla": "৯৩. আন্-নূর", "meaning": "পরম-আলো, আলোক"},
    {"arabic": "الكريم", "bangla": "৯৪. আল-হাদী", "meaning": "পথ-প্রদর্শক, হিদায়েতকারী"},
    {"arabic": "الواسع", "bangla": "৯৫. আল-বাদীই", "meaning": "অতুলনীয়"},
    {"arabic": "المحسن", "bangla": "৯৬. আল-বাক্বী", "meaning": "চিরস্থায়ী, অবিনশ্বর"},
    {"arabic": "الجواد", "bangla": "৯৭. আল-ওয়ারিস", "meaning": "উত্তরাধিকারী"},
    {"arabic": "المحيط", "bangla": "৯৮. আর-রাশীদ", "meaning": "সঠিক পথ-প্রদর্শক, বিচক্ষণ, সচেতন"},
    {"arabic": "العدل", "bangla": "৯৯. আস-সবুর", "meaning": "অত্যধিক ধৈর্যধারণকারী"},
  ];

  AllahNamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C2A28), // Dark Green Background
      appBar: AppBar(
        backgroundColor: Color(0xFF0C2A28),
        title: Text("আল্লাহর ৯৯টি নাম",
            style: GoogleFonts.poppins(fontSize: 22.sp, fontWeight: FontWeight.bold, color: Colors.white)),
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
