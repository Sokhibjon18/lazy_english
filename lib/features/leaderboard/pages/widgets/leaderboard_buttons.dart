import 'package:flutter/material.dart';

class LeaderboardButtons extends StatefulWidget {
  const LeaderboardButtons({super.key});

  @override
  State<LeaderboardButtons> createState() => _LeaderboardButtonsState();
}

List<String> _buttonTexts = ['Weekly', 'Monthly', 'All Time'];
List<bool> _isChosen = [true, false, false];

class _LeaderboardButtonsState extends State<LeaderboardButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isChosen = [false, false, false];
                    _isChosen[index] = true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: _isChosen[index] == true
                        ? const Color(0xFF6949FF)
                        : Colors.white,
                    border:
                        Border.all(color: const Color(0xFF6949FF), width: 2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  height: 48,
                  child: Center(
                    child: Text(
                      _buttonTexts[index],
                      style: TextStyle(
                        color: _isChosen[index] == true
                            ? Colors.white
                            : const Color(0xFF6949FF),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
