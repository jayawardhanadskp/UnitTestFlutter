import 'package:flutter_test/flutter_test.dart';
import 'package:normalapp_unit_test/counter.dart';

void main() {
  // given when then

  group('Counter class -', () {
    test(
      'given counter class when it is instanted then value of count should be 0',
      () {
    // Arrange
    final Counter counter = Counter();
    // Act
    final val = counter.count;
    // Assert
    expect(val, 0);
  });

  test(
      'given counter class when it is incremented the value of count should be 1',
      () {
    // Arrange
    final Counter counter = Counter();

    // Act
    counter.incrementCounter();
    final val = counter.count;

    // Assert
    expect(val, 1);
  });
  });
  
}
