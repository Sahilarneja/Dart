import 'employeeSalary.dart';

void main() {
  var empData = EmployeeData(1, 'John Doe', 'admin');

  print('Employee ID: ${empData.empId}');
  print('Employee Name: ${empData.empName}');
  print('Employee Department: ${empData.empDept}');
  print('Employee Salary: \$${empData.empSalary}');
}
