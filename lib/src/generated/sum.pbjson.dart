//
//  Generated code. Do not modify.
//  source: sum.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sumRequestDescriptor instead')
const SumRequest$json = {
  '1': 'SumRequest',
  '2': [
    {'1': 'number1', '3': 1, '4': 1, '5': 1, '10': 'number1'},
    {'1': 'number2', '3': 2, '4': 1, '5': 1, '10': 'number2'},
  ],
};

/// Descriptor for `SumRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sumRequestDescriptor = $convert.base64Decode(
    'CgpTdW1SZXF1ZXN0EhgKB251bWJlcjEYASABKAFSB251bWJlcjESGAoHbnVtYmVyMhgCIAEoAV'
    'IHbnVtYmVyMg==');

@$core.Deprecated('Use sumResponseDescriptor instead')
const SumResponse$json = {
  '1': 'SumResponse',
  '2': [
    {'1': 'sum', '3': 1, '4': 1, '5': 1, '10': 'sum'},
  ],
};

/// Descriptor for `SumResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sumResponseDescriptor = $convert.base64Decode(
    'CgtTdW1SZXNwb25zZRIQCgNzdW0YASABKAFSA3N1bQ==');

