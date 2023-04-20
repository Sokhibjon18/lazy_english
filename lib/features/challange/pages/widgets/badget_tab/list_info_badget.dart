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

List<ListInfoBadget> infoListBadgetOne = [
  ListInfoBadget(
      badgetImageName: 'assets/images/dimond_circular.png',
      month: 'November',
      xpLevel: '2000 XP',
      typ: 'Quiz King'),
  ListInfoBadget(
      badgetImageName: 'assets/images/crown.png',
      month: 'July',
      xpLevel: '1500XP',
      typ: 'Compass Smart'),
  ListInfoBadget(
      badgetImageName: 'assets/images/compas.png',
      month: 'March',
      xpLevel: '2500 XP',
      typ: 'Diamond Winner'),
];

List<ListInfoBadget> infoListBadgetTwo = [
  ListInfoBadget(
      badgetImageName: 'assets/images/star.png',
      month: 'December',
      xpLevel: '2500 XP',
      typ: 'Shining Star'),
  ListInfoBadget(
      badgetImageName: 'assets/images/portfel.png',
      month: 'August',
      xpLevel: '3000 XP',
      typ: 'Most Active'),
  ListInfoBadget(
      badgetImageName: 'assets/images/cheese.png',
      month: 'March',
      xpLevel: '1000 XP',
      typ: 'The Sweetest'),
  ListInfoBadget(
      badgetImageName: 'assets/images/bow.png',
      month: 'February',
      xpLevel: '1500 XP',
      typ: 'Best Target'),
];

List<ListInfoBadget> infoListBadgetThri = [
  ListInfoBadget(
      badgetImageName: 'assets/images/fix.png',
      month: 'December',
      xpLevel: '2500 XP',
      typ: 'Quick Fix'),
  ListInfoBadget(
      badgetImageName: 'assets/images/time.png',
      month: 'August',
      xpLevel: '3000 XP',
      typ: 'The Fastest Man'),
  ListInfoBadget(
      badgetImageName: 'assets/images/brain.png',
      month: 'March',
      xpLevel: '1000 XP',
      typ: 'Smart Learning'),
  ListInfoBadget(
      badgetImageName: 'assets/images/crown.png',
      month: 'February',
      xpLevel: '1500 XP',
      typ: 'Best Target'),
];

List<List<ListInfoBadget>> listInfoBadges = [
  infoListBadgetOne,
  infoListBadgetTwo,
  infoListBadgetThri
];
