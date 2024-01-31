import 'calculateAvgMarks.dart';

class Employee {
  int? _empId;
  String? _empName;
  String? _empDept;
  double? _empSalary;

  // Constructor
  Employee(this._empId, this._empName, this._empDept) {
    _empSalary = calculateSalary();
  }

  
  double calculateSalary() {
    double basicSalary = 50000.0;

    // Map to store department allowances in percentage
    Map<String, double> deptAllowances = {
      'admin': 0.20,
      'teamlead': 0.70,
      'technical': 0.60,
      'officestaff': 0.10,
    };

    
    if (deptAllowances.containsKey(_empDept)) {
      double allowancePercentage = deptAllowances[_empDept]!;
      return basicSalary + (basicSalary * allowancePercentage);
    } else {
      print('Unknown department. Salary calculation failed.');
      return 0.0;
    }
  }

  // Getter methods
  int? getEmpId() => _empId;
  String? getEmpName() => _empName;
  String? getEmpDept() => _empDept;
  double? getEmpSalary() => _empSalary;
}

void main() {
  
  var emp1 = Employee(1, 'John Doe', 'admin');

  print('Employee ID: ${emp1.getEmpId()}');
  print('Employee Name: ${emp1.getEmpName()}');
  print('Employee Department: ${emp1.getEmpDept()}');
  print('Employee Salary: \$${emp1.getEmpSalary()}');
}

