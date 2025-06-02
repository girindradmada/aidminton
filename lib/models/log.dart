class LogModel {
  String injuryName;
  String logDate;
  String priority; // keep this as asset path
  String description; // <-- new field

  LogModel({
    required this.injuryName,
    required this.logDate,
    required this.priority,
    required this.description,
  });

  static List<LogModel> getLog() {
    return [
      LogModel(
        injuryName: 'Dislocated Shoulder',
        logDate: '25/01/2025',
        priority: 'assets/icons/mild.svg',
        description: 'Initial dummy log'
      ),
      LogModel(
        injuryName: 'Bruised Knee',
        logDate: '18/02/2025',
        priority: 'assets/icons/low.svg',
        description: 'Initial dummy log'
      ),
      LogModel(
        injuryName: 'Torn ACL',
        logDate: '24/03/2025',
        priority: 'assets/icons/Alert triangle.svg',
        description: 'Initial dummy log'
      ),
    ];
  }
}
