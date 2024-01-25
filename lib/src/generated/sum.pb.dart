//
//  Generated code. Do not modify.
//  source: sum.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SumRequest extends $pb.GeneratedMessage {
  factory SumRequest({
    $core.double? number1,
    $core.double? number2,
  }) {
    final $result = create();
    if (number1 != null) {
      $result.number1 = number1;
    }
    if (number2 != null) {
      $result.number2 = number2;
    }
    return $result;
  }
  SumRequest._() : super();
  factory SumRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SumRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SumRequest', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'number1', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'number2', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SumRequest clone() => SumRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SumRequest copyWith(void Function(SumRequest) updates) => super.copyWith((message) => updates(message as SumRequest)) as SumRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SumRequest create() => SumRequest._();
  SumRequest createEmptyInstance() => create();
  static $pb.PbList<SumRequest> createRepeated() => $pb.PbList<SumRequest>();
  @$core.pragma('dart2js:noInline')
  static SumRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SumRequest>(create);
  static SumRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get number1 => $_getN(0);
  @$pb.TagNumber(1)
  set number1($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumber1() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumber1() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get number2 => $_getN(1);
  @$pb.TagNumber(2)
  set number2($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumber2() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber2() => clearField(2);
}

class SumResponse extends $pb.GeneratedMessage {
  factory SumResponse({
    $core.double? sum,
  }) {
    final $result = create();
    if (sum != null) {
      $result.sum = sum;
    }
    return $result;
  }
  SumResponse._() : super();
  factory SumResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SumResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SumResponse', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'sum', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SumResponse clone() => SumResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SumResponse copyWith(void Function(SumResponse) updates) => super.copyWith((message) => updates(message as SumResponse)) as SumResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SumResponse create() => SumResponse._();
  SumResponse createEmptyInstance() => create();
  static $pb.PbList<SumResponse> createRepeated() => $pb.PbList<SumResponse>();
  @$core.pragma('dart2js:noInline')
  static SumResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SumResponse>(create);
  static SumResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get sum => $_getN(0);
  @$pb.TagNumber(1)
  set sum($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSum() => $_has(0);
  @$pb.TagNumber(1)
  void clearSum() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
