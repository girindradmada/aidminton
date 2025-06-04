class FirstAidModel {
  String aidName;
  String aidPhoto;

  FirstAidModel ({
    required this.aidName,
    required this.aidPhoto,
  });

  static List<FirstAidModel> getAidModel() {
    List<FirstAidModel> getAidModel = [];

    getAidModel.add(
      FirstAidModel(aidName: 'CPR', aidPhoto: 'assets/icons/firstAidCPRImage.png')
    );

    getAidModel.add(
      FirstAidModel(aidName: 'Recovery Position', aidPhoto: 'assets/icons/firstRecoveryImage.png')
    );

    getAidModel.add(
      FirstAidModel(aidName: 'Iodine', aidPhoto: 'assets/icons/firstAidIodineImage.png')
    );

    getAidModel.add(
      FirstAidModel(aidName: 'Bandages', aidPhoto: 'assets/icons/firstAidBandageImage.png')
    );

    getAidModel.add(
      FirstAidModel(aidName: 'Transport', aidPhoto: 'assets/icons/firstAidTransportImage.png')
    );

    getAidModel.add(
      FirstAidModel(aidName: 'Minor Injuries', aidPhoto: 'assets/icons/firstAidMinorInjuriesImage.png')
    );

    return getAidModel;
  }
}