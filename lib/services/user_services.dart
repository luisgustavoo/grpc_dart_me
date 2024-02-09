import 'package:grpc/grpc.dart';
import 'package:grpc_dart_me/generated/user/user.pbgrpc.dart';

class UserServices extends UserServiceBase {
  @override
  Future<UserResponse> getUsers(ServiceCall call, UserRequest request) async {
    final users = List.generate(
      10000,
      (index) => User(
        id: index,
        name: 'Name $index',
        age: index,
      ),
    );

    return UserResponse(users: users);
  }

  @override
  Stream<UserResponse> getUsersServerStream(
      ServiceCall call, UserRequest request) async* {
    var userList = <User>[];

    for (var i = 0; i < 100; i++) {
      userList.add(
        User(id: i, name: 'Name $i', age: i),
      );
      await Future<void>.delayed(
        const Duration(seconds: 1),
      );

      yield UserResponse(users: userList);
    }
  }

  @override
  Future<UserResponse> sendUsersClientStream(
      ServiceCall call, Stream<User> request) async {
    final userList = <User>[];

    try {
      await for (final user in request) {
        // if (await request.isEmpty) {
        //   return UserResponse(users: userList);
        // }
        userList.add(user);
        // return UserResponse(users: userStream.users);
      }
      return UserResponse(users: userList);
    } on Exception catch (e) {
      print(e);
      throw Exception();
    }
  }
}
