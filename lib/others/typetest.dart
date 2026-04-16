// dataTypes test
import 'dart:ffi';

void main() {
  // ignore: unused_local_variable
  var s = 'asd';
  var b = true;
  // ignore: unused_local_variable
  var c = 10.5;

  print('integer');

  print('String');

  if (b is Bool) {
    print('boolean');
  }

  print('double');
}
