import 'dart:io';
import 'calculateAvgMarks.dart';

void main() {
  try {
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
    var student = Student.calculateAverageMarks(rollNo, inputName, subject1Marks, subject2Marks, subject3Marks);

    // Displaying student details
    print('\nStudent Details:');
    print('College Name: ${student.collegeName}');
    print('Roll No: ${student.rollNo}');
    print('Formatted Name: ${student.name}');
    print('Subject 1 Marks: ${student.subject1Marks}');
    print('Subject 2 Marks: ${student.subject2Marks}');
    print('Subject 3 Marks: ${student.subject3Marks}');
    print('Percentage is: ${student.calculatePercentage()}');
    print('Average Marks: ${student.calculateAverageMarks()}');
  } catch (e) {
    print('Invalid input. Please enter valid numeric values for Roll No and Marks.');
  }
}
