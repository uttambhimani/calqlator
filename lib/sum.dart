class sum {
  int calculate(String number) //99+99
  {
    String first = "";
    String last = "";
    int index = 0;
    for (int i = 0; i < number.length; i++) {
      if (number[i] != '+') {
        first = "$first${number[i]}";
      } else {
        index = i;
        break;
      }
    }
    for (int i = index + 1; i < number.length; i++) {
      last = "$last${number[i]}";
    }
    return int.parse(first) + int.parse(last);
  }
}
class NumberFormatter {
  static String format(String text) {
    try {
      double parsedNumber = double.parse(text);
      if ((parsedNumber != double.infinity) && (parsedNumber == parsedNumber.floor())) {
        return parsedNumber.truncate().toString();
      }
      return text;
    } catch(err) {
      return text;
    }
  }
}
class Calculations {
  static const PERIOD = '.';
  static const MULTIPLY = '*';
  static const SUBTRACT = '-';
  static const ADD = '+';
  static const DIVIDE = '/';
  static const CLEAR = 'CLEAR';
  static const EQUAL = '=';
  static const OPERATIONS = [
    Calculations.ADD,
    Calculations.MULTIPLY,
    Calculations.SUBTRACT,
    Calculations.DIVIDE,
  ];
  static double add(double a, double b) => a + b;
  static double subtract(double a, double b) => a - b;
  static double divide(double a, double b) => a / b;
  static double multiply(double a, double b) => a  * b;
}
class Calculator {
  static String parseString(String text) {
    List<String> numbersToAdd;
    double a, b, result;
    if (text.contains(Calculations.ADD)) {
      numbersToAdd = text.split(Calculations.ADD);
      a = double.parse(numbersToAdd[0]);
      b = double.parse(numbersToAdd[1]);
      result = Calculations.add(a, b);
    } else if (text.contains(Calculations.MULTIPLY)) {
      numbersToAdd = text.split(Calculations.MULTIPLY);
      a = double.parse(numbersToAdd[0]);
      b = double.parse(numbersToAdd[1]);
      result = Calculations.multiply(a, b);
    } else if (text.contains(Calculations.DIVIDE)) {
      numbersToAdd = text.split(Calculations.DIVIDE);
      a = double.parse(numbersToAdd[0]);
      b = double.parse(numbersToAdd[1]);
      result = Calculations.divide(a, b);
    } else if (text.contains(Calculations.SUBTRACT)) {
      numbersToAdd = text.split(Calculations.SUBTRACT);
      a = double.parse(numbersToAdd[0]);
      b = double.parse(numbersToAdd[1]);
      result = Calculations.subtract(a, b);
    } else {
      return text;
    }
    return NumberFormatter.format(result.toString());
  }
  static String addPeriod(String calculatorString) {
    if (calculatorString.isEmpty) {
      return calculatorString = '0${Calculations.PERIOD}';
    }
    RegExp exp = new RegExp(r"\d\.");
    Iterable<Match> matches = exp.allMatches(calculatorString);
    int maxMatches = Calculator.includesOperation(calculatorString) ? 2 : 1;
    return matches.length == maxMatches
        ? calculatorString
        : calculatorString += Calculations.PERIOD;
  }
  static bool includesOperation(String calculatorString) {
    for (var operation in Calculations.OPERATIONS) {
      if (calculatorString.contains(operation)) {
        return true;
      }
    }
    return false;
  }
}