class CalculatorLogic {
  String display = "";
  String operator = "";
  double? firstNumber;

  void onButtonTap(String value) {
    try {
      // Clear
      if (value == 'C') {
        display = '';
        operator = '';
        firstNumber = null;
      }
      // Backspace
      else if (value == '⌫') {
        if (display.isNotEmpty) {
          display = display.substring(0, display.length - 1);
        }
      }
      // Operator
      else if (value == '+' || value == '-' || value == '×' || value == '÷') {
        if (display.isNotEmpty) {
          firstNumber = double.parse(display);
          operator = value;
          display = '';
        } else if (firstNumber != null) {
          operator = value; // Change operator before entering second number
        }
      }
      // Equal
      else if (value == '=') {
        if (firstNumber == null || display.isEmpty || operator.isEmpty) {
          display = "Error";
          return;
        }

        double secondNumber = double.parse(display);
        double result = 0;

        if (operator == '+') result = firstNumber! + secondNumber;
        else if (operator == '-') result = firstNumber! - secondNumber;
        else if (operator == '×') result = firstNumber! * secondNumber;
        else if (operator == '÷') {
          if (secondNumber == 0) throw Exception("Cannot divide by zero");
          result = firstNumber! / secondNumber;
        }

        display = result.toString();
        firstNumber = result;
        operator = '';
      }
      // Number / dot
      else {
        if (value == '.' && display.contains('.')) return; // prevent multiple dots
        display += value;
      }
    } catch (e) {
      display = "Error";
    }
  }
}
