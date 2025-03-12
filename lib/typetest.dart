// Type test
import 'dart:ffi';

void main() {
  var a = 100;
  var s = 'asd';
  var b = true;

  if (a is int) {
    print('integer');
  }

  if (s is String) {
    print('String');
  }

  if (b is Bool) {
    print('boolean');
  }
}
