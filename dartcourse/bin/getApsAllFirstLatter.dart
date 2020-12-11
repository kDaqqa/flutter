//By use PassFunctionAsParameter + typedef
//get caps all first latter and mid letter is (A.)
typedef String nameFun(String x);
void main(List<String> arguments) {
  String result =
      getFullName('khaled', 'ahmed', 'daqqa', getCapitalizeName, midLetter);
  print(result);
}

String getFullName(
    String fName, String mName, String lName, nameFun fun1, nameFun fun2) {
  return '${fun1(fName)} ${fun2(mName)} ${fun1(lName)}';
}

String getCapitalizeName(String name) {
  String firstLetter = name[0].toUpperCase();
  String allLetters = name.substring(1);
  return firstLetter + allLetters;
}

String midLetter(String name) {
  return name[0].toUpperCase() + '.';
}
