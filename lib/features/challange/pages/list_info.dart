class ListInfoTarget {
  String iconImageName;
  String missionName;
  String count;
  double percent;
  ListInfoTarget(
      {required this.iconImageName,
      required this.missionName,
      required this.count,
      required this.percent});
}

List<ListInfoTarget> infoList = [
  ListInfoTarget(
    iconImageName: 'assets/images/dimond.png',
    missionName: 'Get 25 Diamonds',
    count: '12 / 25',
    percent: 0.5,
  ),
  ListInfoTarget(
      iconImageName: 'assets/images/lightning.png',
      missionName: 'Get 40 XP',
      count: '24 / 40',
      percent: 0.6),
  ListInfoTarget(
      iconImageName: 'assets/images/target.png',
      missionName: 'Get 2 perfect lessons',
      count: '0 / 2',
      percent: 0),
  ListInfoTarget(
      iconImageName: 'assets/images/fire.png',
      missionName: 'Complete 1 challenge',
      count: '1 / 1',
      percent: 1)
];
