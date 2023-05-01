import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../user_profile_details_page.dart';

class UsersPlaces extends StatefulWidget {
  const UsersPlaces({super.key});

  @override
  State<UsersPlaces> createState() => _UsersPlacesState();
}

class _UsersPlacesState extends State<UsersPlaces> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const UserProfileDetailsPage(),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              height: 80,
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(color: Color(0xFFEEEEEE)),
                ),
              ),
              child: Row(
                children: [
                  allPlaces(index),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const Text(
                    'Maryland Winkles',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Expanded(child: Container()),
                  const Text(
                    '948 XP',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget allPlaces(int index) {
    if (index > 2) {
      return Padding(
        padding: const EdgeInsets.only(left: 8, right: 14),
        child: Text(
          '${index + 1}',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      );
    } else {
      return topPlaces(index);
    }
  }

  Widget topPlaces(int index) {
    switch (index) {
      case 0:
        return SvgPicture.asset('assets/vectors/first_place_medal.svg');
      case 1:
        return SvgPicture.asset('assets/vectors/second_place_medal.svg');
      case 2:
        return SvgPicture.asset('assets/vectors/third_place_medal.svg');
      default:
    }
    return Container();
  }
}
