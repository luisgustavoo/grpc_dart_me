import 'package:grpc/grpc.dart';
import 'package:grpc_dart_me/src/generated/sum.pbgrpc.dart';

class SumServices extends SumServiceBase {
  @override
  Future<SumResponse> sum(ServiceCall call, SumRequest request) async {
    return SumResponse()..sum = request.number1 + request.number2;
  }
}
