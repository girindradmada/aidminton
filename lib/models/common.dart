class CommonModel {
  String commonName;
  String injuryPhoto;

  CommonModel ({
    required this.commonName,
    required this.injuryPhoto,
  });

  static List<CommonModel> getCommon() {
    List<CommonModel> commons = [];

    commons.add(
      CommonModel(commonName: 'Broken Bones', injuryPhoto: 'assets/icons/brokenbones.png')
    );

    commons.add(
      CommonModel(commonName: 'Cramps', injuryPhoto: 'assets/icons/cramps.png')
    );

    commons.add(
      CommonModel(commonName: 'Joint Pain', injuryPhoto: 'assets/icons/jointpain.png')
    );

    commons.add(
      CommonModel(commonName: 'Sprains', injuryPhoto: 'assets/icons/sprains.png')
    );

    commons.add(
      CommonModel(commonName: 'Muscle Aches', injuryPhoto: 'assets/icons/muscleaches.png')
    );

    commons.add(
      CommonModel(commonName: 'Muscle Tears', injuryPhoto: 'assets/icons/muscletear.png')
    );

    return commons;
  }
}