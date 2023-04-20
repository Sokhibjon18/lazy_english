import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'complete_profile_page.dart';
import 'widgets/create_signup_password.dart';
import 'widgets/email_address.dart';

import 'widgets/top_progress_bar.dart';
import 'widgets/take_user_info.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

CarouselController carouselController = CarouselController();
int currentPage = 0;
double percent = 0.25;

class _UserInfoPageState extends State<UserInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            setState(() {});
            if (currentPage == 0) {
              Navigator.pop(context);
              percent = 0.25;
            } else {
              carouselController.previousPage();
              percent = percent - 0.25;
            }
          },
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Center(
            child: TopProgressBar(linearPercent: percent),
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CarouselSlider.builder(
            carouselController: carouselController,
            itemCount: 4,
            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
              currentPage = pageViewIndex;
              return carouselSwitch(pageViewIndex);
            },
            options: CarouselOptions(
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
            ),
          ),
          Column(
            children: [
              Divider(color: Colors.grey.withOpacity(0.6)),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 32),
                child: SizedBox(
                  width: double.infinity,
                  height: 58,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (currentPage == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const CompleteProfile(),
                            ),
                          );
                        } else {
                          carouselController.nextPage();
                          percent = percent + 0.25;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6949FF),
                      shape: const StadiumBorder(),
                    ),
                    child: const Text('Continue'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget carouselSwitch(int index) {
    switch (index) {
      case 0:
        return const TakeUserInfo(
          questionText: 'What is your name? 🧑 👩',
          whatToWriteInTextfield: 'Full Name',
        );
      case 1:
        return const TakeUserInfo(
          questionText: 'How old are you? 🎂',
          whatToWriteInTextfield: 'Age',
        );
      case 2:
        return const EmailAddress();
      case 3:
        return const CreateNewPassword();
      default:
    }
    return Container();
  }
}
