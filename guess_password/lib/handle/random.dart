import 'dart:math';

List<int> generateRandomNumbers() {
  List<int> numbers = [];
  Random random = Random();

  while (numbers.length < 4) {
    int randomNumber = random.nextInt(10);
    if (!numbers.contains(randomNumber)) {
      numbers.add(randomNumber);
    }
  }

  return numbers;
}
