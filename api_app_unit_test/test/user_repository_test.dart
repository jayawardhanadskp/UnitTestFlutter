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
        'given UserRepository class when getUser function is called and status code is 200 then a usermodel should be returned',
        () async {
          // Arrange
          when(
            () => mockHTTPClient.get(
              Uri.parse('https://jsonplaceholder.typicode.com/users/1'),
            ),
          ).thenAnswer((invocation) async {
            return Response('''
            {
              "id": 1,
              "name": "Leanne Graham",
              "username": "Bret",
              "email": "Sincere@april.biz",
              "website": "hildegard.org"
            }
            ''', 200);
          });
          // Act
          final user = await userRepository.getUser();
          // Assert
          expect(user, isA<User>());
        },
      );

      
    });
  });
}