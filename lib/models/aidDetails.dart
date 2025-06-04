class AidDetailsModel {
  String aidName;
  String aidMainImage;
  String aidImage1;
  String aidImage2;
  String aidImage3;
  String aidImage4;
  String aidDescription1;
  String aidDescription2;
  String aidDescription3;
  String aidDescription4;


  AidDetailsModel ({
    required this.aidName,
    required this.aidMainImage,
    required this.aidImage1,
    required this.aidImage2,
    required this.aidImage3,
    required this.aidImage4,
    required this.aidDescription1,
    required this.aidDescription2,
    required this.aidDescription3,
    required this.aidDescription4,
  });

  static List<AidDetailsModel> getAidDetails() {
    List<AidDetailsModel> aidDetails = [];

    aidDetails.add(
      AidDetailsModel(
        aidName: 'CPR', 
        aidMainImage: 'assets/icons/firstAidCPRImage.png',
        aidImage1: 'assets/icons/CPRImage1.png',
        aidImage2: 'assets/icons/CPRImage2.png',
        aidImage3: 'assets/icons/CPRImage3.png',
        aidImage4: 'assets/icons/CPRImage4.png',
        aidDescription1: 'Check if victim is responsive. Do not resuscitate if victim is responsive.',
        aidDescription2: 'Resuscitate with chest compressions. 2 Inches, 100 BPM',
        aidDescription3: 'Look, listen, and feel for breathing. Tilt head back gently to keep airway open.',
        aidDescription4: 'Call for help and continue chest compressions.',
      )
    );

    return aidDetails;
  }
}