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
    iconImageName: 'assets/images/dimond.png',
    coins: 'Get 25 Diamonds',
    count: '12 / 25',
    protsent: 0.5,
  ),
  ListInfoTarget(
      iconImageName: 'assets/images/lightning.png',
      coins: 'Get 40 XP',
      count: '24 / 40',
      protsent: 0.6),
  ListInfoTarget(
      iconImageName: 'assets/images/target.png',
      coins: 'Get 2 perfect lessons',
      count: '0 / 2',
      protsent: 0),
  ListInfoTarget(
      iconImageName: 'assets/images/fire.png',
      coins: 'Complete 1 challenge',
      count: '1 / 1',
      protsent: 1)
];
