main() {
  // constant variable declaration with const keyword and
  // its value can't be changed once assigned to it.
  // aConstNum is a constant variable of type int.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';
  const aConstList = ['a', 'b', 'c'];
  int? num;

  print(aConstNum);
  print(aConstBool);
  print(aConstString);
  print(aConstList);
  print(num);
  // runtimeType property is used to get the type of the variable.
  print(aConstNum.runtimeType);
  print(aConstBool.runtimeType);
  print(aConstString.runtimeType);
  print(aConstList.runtimeType);
}
