import 'package:api_app/user_model.dart';
import 'package:api_app/user_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';

class MockHTTPClient extends Mock implements Client {}

void main() {
  late UserRepository userRepository;
  late MockHTTPClient mockHTTPClient;

  setUp(() {
    mockHTTPClient = MockHTTPClient();
    userRepository = UserRepository(mockHTTPClient);
  });
  group('UserRepository - ', () {
    group('getUser function', () {
      test(
          'given UserRepository class when getUser function is and status code is == 200 then UserModel should be returned',
          () async {
        // Arrange
        // Act
        final user = await userRepository.getUser();
        // Assert
        expect(user, isA<User>());
      });

      test(
          'given UserRepository class when getUser function is call and ststus code want be 200',
          () async {
        // Arrange

        //Act
        final user = await userRepository.getUser();

        // Assert
        expect(user, throwsException);
      });
    });
  });
}