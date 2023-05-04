import 'package:flutter/material.dart';
import 'widgets/badget_tab/badget_button.dart';
import 'widgets/challange_app_bar.dart';
import 'widgets/target_tab/target.dart';

class ChallangePage extends StatefulWidget {
  const ChallangePage({super.key});

  @override
  State<ChallangePage> createState() => _ChallangePageState();
}

class _ChallangePageState extends State<ChallangePage> {
  bool _selected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white70,
        elevation: 0,
        title: const ChallangeAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: _selected == true
                              ? const Color(0xFF6949FF)
                              : const Color(0xFFFFFFFF),
                          border: Border.all(color: const Color(0xFF6949FF)),
                          borderRadius: BorderRadius.circular(100)),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            _selected = true;
                          });
                        },
                        child: Text(
                          'Target',
                          style: TextStyle(
                              color: _selected == true
                                  ? const Color(0xFFFFFFFF)
                                  : const Color(0xFF6949FF)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: _selected == false
                              ? const Color(0xFF6949FF)
                              : const Color(0xFFFFFFFF),
                          border: Border.all(color: const Color(0xFF6949FF)),
                          borderRadius: BorderRadius.circular(100)),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            _selected = false;
                          });
                        },
                        child: Text(
                          'Badges',
                          style: TextStyle(
                              color: _selected == true
                                  ? const Color(0xFF6949FF)
                                  : const Color(0xFFFFFFFF)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              _selected == true ? const TargetButton() : const BadgetButton(),
            ],
          ),
        ),
      ),
    );
  }
}
