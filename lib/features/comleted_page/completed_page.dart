import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lazy_english/features/comleted_page/list.dart';

class CompletedPage extends StatefulWidget {
  const CompletedPage({super.key});

  @override
  State<CompletedPage> createState() => _CompletedPageState();
}

class _CompletedPageState extends State<CompletedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 12),
              const Text(
                'Lesson completed!',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                    color: Color(0xFF6949FF)),
              ),
              const SizedBox(height: 8),
              const SizedBox(
                  width: 190,
                  child: Image(
                      image: AssetImage('assets/images/happy_jumping.png'))),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Color(0xFF246BFD)),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 12.0, bottom: 12),
                      child: Text(
                        'Diamonds',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFFFFFF)),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        border: Border.all(
                            color: const Color(0xFF246BFD), width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/vectors/diamond.svg'),
                          const SizedBox(
                            width: 13.25,
                          ),
                          const Text(
                            '12',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF212121)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (var word in complatedListInfo)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [word.startColor, word.finishColor],
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              word.text,
                              style: const TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22),
                            ),
                          ),
                          Container(
                            width: 105,
                            decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                border: Border.all(color: word.finishColor),
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 16, bottom: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(word.iconName),
                                  Text(
                                    word.amount,
                                    style: const TextStyle(
                                        color: Color(0xFF212121),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                ],
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 58,
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        backgroundColor: const Color(0xFF6949FF)),
                    onPressed: () {},
                    child: const Text(
                      'CONTINUE',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
