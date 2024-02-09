//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $0;

export 'user.pb.dart';

@$pb.GrpcServiceName('UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUsers = $grpc.ClientMethod<$0.UserRequest, $0.UserResponse>(
      '/UserService/GetUsers',
      ($0.UserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));
  static final _$getUsersServerStream = $grpc.ClientMethod<$0.UserRequest, $0.UserResponse>(
      '/UserService/GetUsersServerStream',
      ($0.UserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));
  static final _$sendUsersClientStream = $grpc.ClientMethod<$0.User, $0.UserResponse>(
      '/UserService/SendUsersClientStream',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserResponse> getUsers($0.UserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUsers, request, options: options);
  }

  $grpc.ResponseStream<$0.UserResponse> getUsersServerStream($0.UserRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getUsersServerStream, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.UserResponse> sendUsersClientStream($async.Stream<$0.User> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$sendUsersClientStream, request, options: options).single;
  }
}

@$pb.GrpcServiceName('UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UserRequest, $0.UserResponse>(
        'GetUsers',
        getUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserRequest.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserRequest, $0.UserResponse>(
        'GetUsersServerStream',
        getUsersServerStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.UserRequest.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.User, $0.UserResponse>(
        'SendUsersClientStream',
        sendUsersClientStream,
        true,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.UserResponse> getUsers_Pre($grpc.ServiceCall call, $async.Future<$0.UserRequest> request) async {
    return getUsers(call, await request);
  }

  $async.Stream<$0.UserResponse> getUsersServerStream_Pre($grpc.ServiceCall call, $async.Future<$0.UserRequest> request) async* {
    yield* getUsersServerStream(call, await request);
  }

  $async.Future<$0.UserResponse> getUsers($grpc.ServiceCall call, $0.UserRequest request);
  $async.Stream<$0.UserResponse> getUsersServerStream($grpc.ServiceCall call, $0.UserRequest request);
  $async.Future<$0.UserResponse> sendUsersClientStream($grpc.ServiceCall call, $async.Stream<$0.User> request);
}
