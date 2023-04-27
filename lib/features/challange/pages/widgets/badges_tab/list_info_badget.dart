class ListInfoBadge {
  String badgetImageName;
  String month;
  String xpLevel;
  String typ;
  ListInfoBadge({
    required this.badgetImageName,
    required this.month,
    required this.xpLevel,
    required this.typ,
  });
}

List<ListInfoBadge> infoListBadgetOne = [
  ListInfoBadge(
      badgetImageName: 'assets/images/dimond_circular.png',
      month: 'November',
      xpLevel: '2000 XP',
      typ: 'Quiz King'),
  ListInfoBadge(
      badgetImageName: 'assets/images/crown.png',
      month: 'July',
      xpLevel: '1500XP',
      typ: 'Compass Smart'),
  ListInfoBadge(
      badgetImageName: 'assets/images/compas.png',
      month: 'March',
      xpLevel: '2500 XP',
      typ: 'Diamond Winner'),
];

List<ListInfoBadge> infoListBadgetTwo = [
  ListInfoBadge(
      badgetImageName: 'assets/images/star.png',
      month: 'December',
      xpLevel: '2500 XP',
      typ: 'Shining Star'),
  ListInfoBadge(
      badgetImageName: 'assets/images/portfel.png',
      month: 'August',
      xpLevel: '3000 XP',
      typ: 'Most Active'),
  ListInfoBadge(
      badgetImageName: 'assets/images/cheese.png',
      month: 'March',
      xpLevel: '1000 XP',
      typ: 'The Sweetest'),
  ListInfoBadge(
      badgetImageName: 'assets/images/bow.png',
      month: 'February',
      xpLevel: '1500 XP',
      typ: 'Best Target'),
];

List<ListInfoBadge> infoListBadgetThri = [
  ListInfoBadge(
      badgetImageName: 'assets/images/fix.png',
      month: 'December',
      xpLevel: '2500 XP',
      typ: 'Quick Fix'),
  ListInfoBadge(
      badgetImageName: 'assets/images/time.png',
      month: 'August',
      xpLevel: '3000 XP',
      typ: 'The Fastest Man'),
  ListInfoBadge(
      badgetImageName: 'assets/images/brain.png',
      month: 'March',
      xpLevel: '1000 XP',
      typ: 'Smart Learning'),
  ListInfoBadge(
      badgetImageName: 'assets/images/crown.png',
      month: 'February',
      xpLevel: '1500 XP',
      typ: 'Best Target'),
];

List<List<ListInfoBadge>> listInfoBadges = [
  infoListBadgetOne,
  infoListBadgetTwo,
  infoListBadgetThri
];
