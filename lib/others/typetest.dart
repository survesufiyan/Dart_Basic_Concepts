// dataTypes test
import 'dart:ffi';

void main() {
  var a = 100;
  var s = 'asd';
  var b = true;
  var c = 10.5;

  if (a is int) {
    print('integer');
  }

  if (s is String) {
    print('String');
  }

  if (b is Bool) {
    print('boolean');
  }

  if (c is double) {
    print('double');
  }
}
