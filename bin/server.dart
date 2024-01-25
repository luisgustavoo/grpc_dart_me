import 'package:grpc/grpc.dart';
import 'package:grpc_dart_me/services/sum_services.dart';
import 'package:grpc_dart_me/services/user_services.dart';

void main(List<String> arguments) async {
  final server = Server.create(
    services: [SumServices(), UserServices()],
    codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}
