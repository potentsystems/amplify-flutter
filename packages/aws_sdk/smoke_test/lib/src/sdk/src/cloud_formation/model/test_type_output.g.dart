// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_type_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestTypeOutput extends TestTypeOutput {
  @override
  final String? typeVersionArn;

  factory _$TestTypeOutput([void Function(TestTypeOutputBuilder)? updates]) =>
      (new TestTypeOutputBuilder()..update(updates))._build();

  _$TestTypeOutput._({this.typeVersionArn}) : super._();

  @override
  TestTypeOutput rebuild(void Function(TestTypeOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestTypeOutputBuilder toBuilder() =>
      new TestTypeOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestTypeOutput && typeVersionArn == other.typeVersionArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, typeVersionArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TestTypeOutputBuilder
    implements Builder<TestTypeOutput, TestTypeOutputBuilder> {
  _$TestTypeOutput? _$v;

  String? _typeVersionArn;
  String? get typeVersionArn => _$this._typeVersionArn;
  set typeVersionArn(String? typeVersionArn) =>
      _$this._typeVersionArn = typeVersionArn;

  TestTypeOutputBuilder();

  TestTypeOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeVersionArn = $v.typeVersionArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestTypeOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestTypeOutput;
  }

  @override
  void update(void Function(TestTypeOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestTypeOutput build() => _build();

  _$TestTypeOutput _build() {
    final _$result =
        _$v ?? new _$TestTypeOutput._(typeVersionArn: typeVersionArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
