class ListInfoTarget {
  String iconImageName;
  String coins;
  String count;
  double protsent;
  ListInfoTarget(
      {required this.iconImageName,
      required this.coins,
      required this.count,
      required this.protsent});
}

List<ListInfoTarget> infoList = [
  ListInfoTarget(
    iconImageName: 'assets/images/symbol1.png',
    coins: 'Get 25 Diamonds',
    count: '12 / 25',
    protsent: 0.5,
  ),
  ListInfoTarget(
      iconImageName: 'assets/images/symbol2.png',
      coins: 'Get 40 XP',
      count: '24 / 40',
      protsent: 0.6),
  ListInfoTarget(
      iconImageName: 'assets/images/symbol3.png',
      coins: 'Get 2 perfect lessons',
      count: '0 / 2',
      protsent: 0),
  ListInfoTarget(
      iconImageName: 'assets/images/symbol4.png',
      coins: 'Complete 1 challenge',
      count: '1 / 1',
      protsent: 1)
];

class ListInfoBadget {
  String badgetImageName;
  String month;
  String xpLevel;
  String typ;
  ListInfoBadget({
    required this.badgetImageName,
    required this.month,
    required this.xpLevel,
    required this.typ,
  });
}

List<ListInfoBadget> infoListBadget = [
  ListInfoBadget(
      badgetImageName: 'assets/images/badget1.png',
      month: 'November',
      xpLevel: '2000 XP',
      typ: 'Quiz King'),
  ListInfoBadget(
      badgetImageName: 'assets/images/badget2.png',
      month: 'July',
      xpLevel: '1500XP',
      typ: 'Compass Smart'),
  ListInfoBadget(
      badgetImageName: 'assets/images/badget3.png',
      month: 'March',
      xpLevel: '2500 XP',
      typ: 'Diamond Winner'),
];

List<ListInfoBadget> infoListBadget2 = [
  ListInfoBadget(
      badgetImageName: 'assets/images/badget21.png',
      month: 'December',
      xpLevel: '2500 XP',
      typ: 'Shining Star'),
  ListInfoBadget(
      badgetImageName: 'assets/images/badget22.png',
      month: 'August',
      xpLevel: '3000 XP',
      typ: 'Most Active'),
  ListInfoBadget(
      badgetImageName: 'assets/images/badget23.png',
      month: 'March',
      xpLevel: '1000 XP',
      typ: 'The Sweetest'),
  ListInfoBadget(
      badgetImageName: 'assets/images/badget24.png',
      month: 'February',
      xpLevel: '1500 XP',
      typ: 'Best Target'),
];

List<ListInfoBadget> infoListBadget3 = [
  ListInfoBadget(
      badgetImageName: 'assets/images/badget31.png',
      month: 'December',
      xpLevel: '2500 XP',
      typ: 'Quick Fix'),
  ListInfoBadget(
      badgetImageName: 'assets/images/badget32.png',
      month: 'August',
      xpLevel: '3000 XP',
      typ: 'The Fastest Man'),
  ListInfoBadget(
      badgetImageName: 'assets/images/badget33.png',
      month: 'March',
      xpLevel: '1000 XP',
      typ: 'Smart Learning'),
  ListInfoBadget(
      badgetImageName: 'assets/images/badget34.png',
      month: 'February',
      xpLevel: '1500 XP',
      typ: 'Best Target'),
];
