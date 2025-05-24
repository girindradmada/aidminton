class DocModel {
  String doctorName;
  String specialist;
  String hospital;
  String docPhoto;

  DocModel({
    required this.doctorName,
    required this.specialist,
    required this.hospital,
    required this.docPhoto,
  });

  static List<DocModel> getDoc() {
    List<DocModel> docs = [];

    docs.add(
      DocModel(doctorName: 'Dr.Asep Hidayat, Sp.JP', specialist: 'Cardiologist', hospital: 'RS Sardjito', docPhoto: 'assets/icons/asep.png')
    );

    docs.add(
      DocModel(doctorName: 'Dr.Vincent Dimanasye, Sp.OT', specialist: 'Orthopedist', hospital: 'RS MMC', docPhoto: 'assets/icons/vincent.png')
    );

    docs.add(
      DocModel(doctorName: 'Dr.Floryn Noflicker, Sp.PD-KHOM', specialist: 'Hermatologist', hospital: 'L.O.D Hospital', docPhoto: 'assets/icons/floryn.png')
    );

    return docs;
  }
}