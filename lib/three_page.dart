import 'dart:ui';
import 'package:first_hw/shared/colors.dart';
import 'package:first_hw/shared/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.secondary
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: const BoxDecoration(
                    color: AppColors.accent
                  ),
                ),
              ),
              BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.transparent),
                  ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '📍 Aix-en-Provence',
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                    const SizedBox(height: 8,),
                    const Text(
                      'Good Morning',
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                     Center(
                      child: Image.asset(
                        'assets/images/5.png',
                        scale: 1.5,
                      ),
                    ),
                    const Center(
                      child: Text(
                        '15°C',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 55,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'THUNDERSTORM',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    const SizedBox(height: 5,),
                    const Center(
                      child: Text(
                        'Friday 16 • 09.41am',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/1.png',
                              scale: 8,
                            ),
                            const SizedBox(width: 5,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sunrise',
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                                SizedBox(height: 3,),
                                Text(
                                  '5:34 am',
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w700
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),Row(
                          children: [
                            Image.asset(
                              'assets/images/11.png',
                              scale: 8,
                            ),
                            const SizedBox(width: 5,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sunset',
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                                SizedBox(height: 3,),
                                Text(
                                  '5:34 pm',
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w700
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Divider(
                        color: AppColors.accent,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/10.png',
                              scale: 8,
                            ),
                            const SizedBox(width: 5,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Temp Max',
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                                SizedBox(height: 3,),
                                Text(
                                  '12°C',
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w700
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),Row(
                          children: [
                            Image.asset(
                              'assets/images/12.png',
                              scale: 8,
                            ),
                            const SizedBox(width: 5,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Temp Main',
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                                SizedBox(height: 3,),
                                Text(
                                  '8°C',
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
