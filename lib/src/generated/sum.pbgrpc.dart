//
//  Generated code. Do not modify.
//  source: sum.proto
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

import 'sum.pb.dart' as $0;

export 'sum.pb.dart';

@$pb.GrpcServiceName('SumService')
class SumServiceClient extends $grpc.Client {
  static final _$sum = $grpc.ClientMethod<$0.SumRequest, $0.SumResponse>(
      '/SumService/Sum',
      ($0.SumRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SumResponse.fromBuffer(value));

  SumServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.SumResponse> sum($0.SumRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sum, request, options: options);
  }
}

@$pb.GrpcServiceName('SumService')
abstract class SumServiceBase extends $grpc.Service {
  $core.String get $name => 'SumService';

  SumServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SumRequest, $0.SumResponse>(
        'Sum',
        sum_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SumRequest.fromBuffer(value),
        ($0.SumResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SumResponse> sum_Pre($grpc.ServiceCall call, $async.Future<$0.SumRequest> request) async {
    return sum(call, await request);
  }

  $async.Future<$0.SumResponse> sum($grpc.ServiceCall call, $0.SumRequest request);
}
