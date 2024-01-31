import 'dart:io';

class Student {
  int? rollNo;
  String? name;
   final String collegeName = 'The Northcap University';
  int? subject1Marks;
  int? subject2Marks;
  int? subject3Marks;

  // Constructor with input validation and name formatting
  Student(this.rollNo, String inputName, this.subject1Marks, this.subject2Marks, this.subject3Marks) {
    name = formatName(inputName);
  }

  // Method to format the name
  String formatName(String inputName) {
    List<String> nameParts = inputName.toLowerCase().split(' ');
    List<String> formattedNameParts = [];

    for (String part in nameParts) {
      formattedNameParts.add(part[0].toUpperCase() + part.substring(1));
    }

    return formattedNameParts.join(' ');
  }

  // Method to calculate average marks
  String calculateAverageMarks() {
    double avgMarks = (subject1Marks! + subject2Marks! + subject3Marks!) / 3.0;

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


void main() {
  // Taking input from the user
  print('Enter Roll No:');
  int? rollNo = int.parse(stdin.readLineSync()!);

  print('Enter Full Name (e.g., ajay KUmar sHaRma):');
  String inputName = stdin.readLineSync()!;

  print('Enter Subject 1 Marks:');
  int? subject1Marks = int.parse(stdin.readLineSync()!);

  print('Enter Subject 2 Marks:');
  int? subject2Marks = int.parse(stdin.readLineSync()!);

  print('Enter Subject 3 Marks:');
  int? subject3Marks = int.parse(stdin.readLineSync()!);

  // Creating a Student instance with user input
  var student = Student(rollNo, inputName, subject1Marks, subject2Marks, subject3Marks);

  // Displaying student details
  print('\nStudent Details:');
  print('College Name: ${student.collegeName}');
  print('Roll No: ${student.rollNo}');
  print('Formatted Name: ${student.name}');
  print('Subject 1 Marks: ${student.subject1Marks}');
  print('Subject 2 Marks: ${student.subject2Marks}');
  print('Subject 3 Marks: ${student.subject3Marks}');
  print('Average Marks: ${student.calculateAverageMarks()}');
    print('ToUpperCase: ${student.collegeName.toUpperCase()}');

}
