import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key, required this.body});
  final Widget body;

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

int _currentIndex = 0;

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.body,
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        unselectedLabelStyle: const TextStyle(
          color: Color(0xFF9E9E9E),
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        selectedLabelStyle: const TextStyle(
          color: Color(0xFF6949FF),
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
        selectedItemColor: const Color(0xFF6949FF),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              child: SvgPicture.asset(
                _currentIndex == 0
                    ? 'assets/bottomsheet_icons/clicked_home.svg'
                    : 'assets/bottomsheet_icons/unclicked_home.svg',
              ),
            ),
            backgroundColor: Colors.white,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              child: SvgPicture.asset(
                _currentIndex == 1
                    ? 'assets/bottomsheet_icons/clicked_leaderbord.svg'
                    : 'assets/bottomsheet_icons/unclicked_leaderbord.svg',
              ),
            ),
            label: 'Leaderbo...',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              child: SvgPicture.asset(
                _currentIndex == 2
                    ? 'assets/bottomsheet_icons/clicked_challange.svg'
                    : 'assets/bottomsheet_icons/unclicked_challange.svg',
              ),
            ),
            label: 'Challange',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 3
                ? const Icon(Icons.star_purple500_rounded)
                : SizedBox(
                    child: SvgPicture.asset(
                        'assets/bottomsheet_icons/unclicked_star.svg'),
                  ),
            label: 'Premium',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              child: SvgPicture.asset(
                _currentIndex == 4
                    ? 'assets/bottomsheet_icons/clicked_profile.svg'
                    : 'assets/bottomsheet_icons/unclicked_profile.svg',
              ),
            ),
            label: 'Account',
            backgroundColor: Colors.white,
          ),
        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
            _navigate(_currentIndex);
          });
        },
        elevation: 0,
      ),
    );
  }

  void _navigate(int index) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/leaderboard');
        break;
      case 2:
        context.go('/challange');
        break;
      case 3:
        context.go('/premium');
        break;
      case 4:
        context.go('/account');
        break;
    }
  }
}
