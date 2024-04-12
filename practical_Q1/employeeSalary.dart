import '../practical_Q2/calculateAvgMarks.dart';

class EmployeeData {
  int? _empId;
  String? _empName;
  String? _empDept;
  double? _empSalary;

  // Constructor
  EmployeeData(this._empId, this._empName, this._empDept) {
    _empSalary = calculateSalary();
  }

  int? get empId => _empId;
  set empId(int? value) => _empId = value;

  String? get empName => _empName;
  set empName(String? value) => _empName = value;

  String? get empDept => _empDept;
  set empDept(String? value) => _empDept = value;

  double? get empSalary => _empSalary;

  double calculateSalary() {
    double basicSalary = 50000.0;

    // Map to store department allowances in percentage
    Map<String, double> deptAllowances = {
      'admin': 0.20,
      'teamlead': 0.70,
      'technical': 0.60,
      'officestaff': 0.10,
    };

    double? allowancePercentage = deptAllowances[_empDept];

    if (allowancePercentage != null) {
      return basicSalary + (basicSalary * allowancePercentage);
    } else {
      print('Unknown department. Salary calculation failed.');
      return 0.0;
    }
  }
}
