class InjuryDetailModel {
  String injuryName;
  String injuryPhoto;
  String injuryDescription;
  String injuryCauses;
  String injurySymptoms;
  String injuryTreatment;

  InjuryDetailModel ({
    required this.injuryName,
    required this.injuryPhoto,
    required this.injuryDescription,
    required this.injuryCauses,
    required this.injurySymptoms,
    required this.injuryTreatment,
  });

  static List<InjuryDetailModel> getInjuryDetails() {
    List<InjuryDetailModel> injuryDetail = [];

    injuryDetail.add(
      InjuryDetailModel(
        injuryName: 'Bone Fracture', 
        injuryPhoto: 'assets/icons/brokenbones.png', 
        injuryDescription: "A complete or partial break in a bone",
        injuryCauses: "Trauma, overuse, or weak bones.",
        injurySymptoms: "Pain and loss of functionality.",
        injuryTreatment: "Fix the broken bone in place, then immobilize it with a cast or splint, allowing time to heal it. In extreme cases, surgery or metal rods may be required to reset the bone."
      )
    );

    injuryDetail.add(
      InjuryDetailModel(
        injuryName: 'Cramps', 
        injuryPhoto: 'assets/icons/cramps.png', 
        injuryDescription: "A sharp pain that occurs when a muscle suddenly contracts",
        injuryCauses: "Overuse, dehydration, electrolyte imbalances, nerve compression, and reduced blood flow.",
        injurySymptoms: "Unexpected tightening of one or more muscles. Sometimes called a charley horse, a muscle cramp can be very painful.",
        injuryTreatment: "Stretching, massaging, and applying heat or cold"
      )
    );

  //   commons.add(
  //     CommonModel(commonName: 'Cramps', injuryPhoto: 'assets/icons/cramps.png')
  //   );

  //   commons.add(
  //     CommonModel(commonName: 'Joint Pain', injuryPhoto: 'assets/icons/jointpain.png')
  //   );

  //   commons.add(
  //     CommonModel(commonName: 'Sprains', injuryPhoto: 'assets/icons/sprains.png')
  //   );

  //   commons.add(
  //     CommonModel(commonName: 'Muscle Aches', injuryPhoto: 'assets/icons/muscleaches.png')
  //   );

  //   commons.add(
  //     CommonModel(commonName: 'Muscle Tears', injuryPhoto: 'assets/icons/muscletear.png')
  //   );

  //   return commons;
  // }
    return injuryDetail;
  }
}