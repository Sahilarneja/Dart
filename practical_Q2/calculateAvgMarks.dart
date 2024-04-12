class Student {
  int? _rollNo;
  String? _name;
  final String _collegeName = 'The Northcap University';
  int? _subject1Marks;
  int? _subject2Marks;
  int? _subject3Marks;

  // Constructor with input validation and name formatting
  Student.calculateAverageMarks(this._rollNo, String inputName, this._subject1Marks, this._subject2Marks, this._subject3Marks) {
    _name = inputName;
  }

  int? get rollNo => _rollNo;
  set rollNo(int? value) => _rollNo = value;

  String? get name => _name;
  set name(String? value) => _name = value;

  String get collegeName => _collegeName;

  int? get subject1Marks => _subject1Marks;
  set subject1Marks(int? value) => _subject1Marks = value;

  int? get subject2Marks => _subject2Marks;
  set subject2Marks(int? value) => _subject2Marks = value;

  int? get subject3Marks => _subject3Marks;
  set subject3Marks(int? value) => _subject3Marks = value;

  

  // Method to calculate average marks
  String calculateAverageMarks() {
    double avgMarks = (_subject1Marks! + _subject2Marks! + _subject3Marks!) / 3.0;
    return _calculateGrade(avgMarks);
  }

  // Method to calculate percentage
  double calculatePercentage() {
    return (_subject1Marks! + _subject2Marks! + _subject3Marks!) / 3.0;
  }

  String _calculateGrade(double avgMarks) {
    if (avgMarks >= 90 && avgMarks <= 100) {
      return "Grade: A";
    } else if (avgMarks >= 80 && avgMarks < 90) {
      return "Grade: B";
    } else if (avgMarks >= 70 && avgMarks < 80) {
      return "Grade: C";
    } else if (avgMarks >= 60 && avgMarks < 70) {
      return "Grade: D";
    } else if (avgMarks >= 0 && avgMarks < 60) {
      return "Grade: E";
    } else {
      return "Invalid Marks";
    }
  }
}
