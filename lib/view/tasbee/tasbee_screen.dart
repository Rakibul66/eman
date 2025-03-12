import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:get/get.dart';

class TasbeehScreen extends StatefulWidget {
  const TasbeehScreen({super.key});

  @override
  _TasbeehScreenState createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen> with SingleTickerProviderStateMixin {
  final List<Map<String, dynamic>> tasbeehList = [
    {"arabic": "الله أكبر", "english": "Allahu Akbar", "count": 0},
    {"arabic": "الحمد لله", "english": "Alhamdulillah", "count": 0},
    {"arabic": "سبحان الله", "english": "SubhanAllah", "count": 0},
    {"arabic": "لا إله إلا الله", "english": "La ilaha illa Allah", "count": 0},
  ];

  late Box _box;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _box = Hive.box('tasbeeh');
    _loadSavedCounts();

    // ✅ Fix Animation Boundaries
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      lowerBound: 0.0, // ✅ Ensure valid range
      upperBound: 1.0, // ✅ Prevents overflow
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
        if (_scaleAnimation.value < 0.0 || _scaleAnimation.value > 1.05) {
          _animationController.stop(); // ✅ Prevents exceeding range
        }
      });
  }

  void _loadSavedCounts() {
    for (int i = 0; i < tasbeehList.length; i++) {
      setState(() {
        tasbeehList[i]['count'] = _box.get(tasbeehList[i]['english'], defaultValue: 0);
      });
    }
  }

  void _incrementCounter(int index) {
    if (!_animationController.isAnimating) {
      _animationController.forward().then((_) => _animationController.reverse());
    }

    setState(() {
      tasbeehList[index]['count']++;
      _box.put(tasbeehList[index]['english'], tasbeehList[index]['count']);
    });
  }

  void _resetCounter(int index) {
    setState(() {
      tasbeehList[index]['count'] = 0;
      _box.put(tasbeehList[index]['english'], 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D3A32), // Updated Background Color
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "তাসবিহ গণনা",
          style: TextStyle(fontSize: 20.sp,color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF0D3A32),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(12.w),
        child: ListView.builder(
          itemCount: tasbeehList.length,
          itemBuilder: (context, index) {
            var tasbeeh = tasbeehList[index];

            return GestureDetector(
              onTap: () => _incrementCounter(index),
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  final safeScale = _scaleAnimation.value.clamp(1.0, 1.05); // ✅ Ensure within bounds
                  return Transform.scale(
                    scale: safeScale,
                    child: child,
                  );
                },
                child: Card(
                  color: Colors.white.withOpacity(0.1),
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Column(
                      children: [
                        // Arabic & English Text
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tasbeeh['english'],
                                  style: TextStyle(fontSize: 16.sp, color: Colors.white),
                                ),
                                Text(
                                  tasbeeh['arabic'],
                                  style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "${tasbeeh['count']}",
                                  style:
                                      TextStyle(fontSize: 32.sp, fontWeight: FontWeight.bold, color: Colors.tealAccent),
                                ),
                                Text("Click to Add +1", style: TextStyle(fontSize: 12.sp, color: Colors.white60)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
