void main() {
  const String studentName = 'John Doe';
  const int studentId = 123456;
  const String division = 'A';
  const String std = '10th Grade';

  const int subjects = 4;
  const int maxMarks = 100;

  const int scienceMarks = 85;
  const int mathMarks = 90;
  const int englishMarks = 78;
  const int historyMarks = 88;

  const int totalMarks = scienceMarks + mathMarks + englishMarks + historyMarks;
  final double percentage = totalMarks * 100 / (subjects * maxMarks);

  print('Student Name: $studentName');
  print('Student ID: $studentId');
  print('Division: $division');
  print('Standard: $std');
  print('Total Marks: $totalMarks out of ${subjects * maxMarks}');
  print('Percentage: $percentage%');
}
