class LogModel {
  String injuryName;
  String logDate;
  String priority;

  LogModel({
    required this.injuryName,
    required this.logDate,
    required this.priority,
  });

  static List<LogModel> getLog() {
    List<LogModel> logs = [];

    logs.add(
      LogModel(injuryName: 'Dislocated Shoulder', logDate: '25/01/2025', priority: 'assets/icons/mild.svg')
    );

    logs.add(
      LogModel(injuryName: 'Bruised Knee', logDate: '18/02/2025', priority: 'assets/icons/low.svg')
    );

    logs.add(
      LogModel(injuryName: 'Torn ACL', logDate: '24/03/2025', priority: 'assets/icons/Alert triangle.svg')
    );

    return logs;
  }
}