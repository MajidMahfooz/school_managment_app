class AssigmentData {
  final String subjectname;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String Status;

  AssigmentData(
      {required this.subjectname,
      required this.topicName,
      required this.assignDate,
      required this.lastDate,
      required this.Status});
}

List<AssigmentData> Assigmnet = [
  AssigmentData(
      subjectname: 'Biology',
      topicName: 'Red Blood Cells',
      assignDate: '17 Nov 2023',
      lastDate: '20 Nov 2023',
      Status: 'Pending'),
      AssigmentData(
      subjectname: 'Physics',
      topicName: 'Bohr Theory',
      assignDate: '11 Nov 2023',
      lastDate: '20 Nov 2023',
      Status: 'Submmitted'),
      AssigmentData(
      subjectname: 'Chemistry',
      topicName: 'Organic Chemistry',
      assignDate: '21 Oct 2023',
      lastDate: '27 Oct 2023',
      Status: 'Not Submitted'),
      AssigmentData(
      subjectname: 'Mathmatics',
      topicName: 'Algebra',
      assignDate: '17 Sep 2023',
      lastDate: '30 Spt 2023',
      Status: 'Pending'),
      
      
];
