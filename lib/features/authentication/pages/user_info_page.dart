import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lazy_english/features/authentication/pages/complete_profile_page.dart';
import 'package:lazy_english/features/authentication/pages/widgets/create_password.dart';
import 'package:lazy_english/features/authentication/pages/widgets/email_address.dart';
import 'package:lazy_english/features/authentication/pages/widgets/user_age.dart';
import 'package:lazy_english/features/authentication/pages/widgets/user_name.dart';
import 'package:lazy_english/features/authentication/pages/widgets/linear_percent_indicator.dart';

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
            child: LinearPercentIndicatorWidget(linearPercent: percent),
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
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              currentPage = pageViewIndex;
              return pageViewIndex == 0
                  ? const TakeUserNamePage()
                  : pageViewIndex == 1
                      ? const TakeUserAgePage()
                      : pageViewIndex == 2
                          ? const CreateNewPasswordPage()
                          : const EmailAddressPage();
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
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 24, bottom: 32),
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
}
