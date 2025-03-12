class Num {
  int num = 10;
  int num2 = 20;
  int num3 = 30;
}

void main() {
//   Null Aware Operator
//   (?.), (??), (??=)
//   (?.) => Contoh: a?.b
//   (??) => Contoh: a ?? b
//   (??=) => Contoh: a ??= b
  var n = Num();
  int number;

  number = n!.num;
  print(number);

  number = n!.num2;
  print(number);

  number = n?.num2 ?? 0;
  print(number);

  number = n?.num3 ?? 0;
  print(number);

  number = n.num3;
  print(number);

  int? number2;
  print(number2 ??= 100);
}
