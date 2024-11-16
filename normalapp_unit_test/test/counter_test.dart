import 'package:flutter_test/flutter_test.dart';
import 'package:normalapp_unit_test/counter.dart';

void main() {
  // PreTest
  // setUp(() => null);
  // setUpAll(() => null);

  // setup is called before every test
  // setupAll is called before all the tests

  // Setup -> test -> setup -> test -> setup -> test
  // SetupAll -> test -> test -> test -> test

  late Counter counter;

  setUp(() {
    counter = Counter();
  });

  // given when then
  // Testing
  group('Counter class -', () {
    test(
        'given counter class when it is instanted then value of count should be 0',
        () {
      // Arrange
      // final Counter counter = Counter();
      // Act
      final val = counter.count;
      // Assert
      expect(val, 0);
    });

    test(
        'given counter class when it is incremented the value of count should be 1',
        () {
      // Arrange
      // final Counter counter = Counter();

      // Act
      counter.incrementCounter();
      final val = counter.count;

      // Assert
      expect(val, 1);
    });

    test('given counter class it is decremented then value is -1', () {
      // Arrange
      // final Counter counter = Counter();

      // Act
      counter.decrementCounter();
      final val = counter.count;

      // Assert
      expect(val, -1);
    });

    test(
        'given counter class when it is reset then the value of counter should be 0',
        () {
      // Arrange
      // done in witn setup

      // Act
      counter.reset();
      final val = counter.count;

      // Assert
      expect(val, 0);
    });
  });

  // Post Test
  // tearDown(() => null);
  // tearDownAll(() => null);

  // test -> Teardown -> test -> Teardown -> test -> Teardown
  // test -> test -> test -> test -> TeardownAll
}
