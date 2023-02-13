class PositionCurrentMonth {
  String? positionNumber;
  String? image;
  String? points;
  String? name;
  bool? isSelect;
  PositionCurrentMonth({
    required this.positionNumber,
    required this.image,
    required this.points,
    required this.name,
    this.isSelect = false,
  });
}

List<PositionCurrentMonth> positionMonthList = [
  PositionCurrentMonth(
    positionNumber: '12',
    image: 'assets/images/progile.png',
    name: 'Daniel B.',
    points: '410',
  ),
  PositionCurrentMonth(
    positionNumber: '11',
    image: 'assets/images/girl.png',
    points: '409',
    name: 'Daniel B.',
    isSelect: true,
  ),
  PositionCurrentMonth(
    positionNumber: '10',
    image: 'assets/images/men.png',
    name: 'Daniel B.',
    points: '401',
  ),
];
