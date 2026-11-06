/*
4. A Mobile shop gives a 10% discount. 
Using const double discount = 20.10; and a mobile price of 20000, print the discount amount and the final price.
*/
void main() {
  const double discount = 20.10;
  const double mobilePrice = 20000.0;

  final double discountAmount = mobilePrice * (discount / 100);
  final double finalPrice = mobilePrice - discountAmount;

  print('Discount Amount: $discountAmount');
  print('Final Price: $finalPrice');
}
