// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_access_denied_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationAccessDeniedException
    extends OrganizationAccessDeniedException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$OrganizationAccessDeniedException(
          [void Function(OrganizationAccessDeniedExceptionBuilder)? updates]) =>
      (new OrganizationAccessDeniedExceptionBuilder()..update(updates))
          ._build();

  _$OrganizationAccessDeniedException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  OrganizationAccessDeniedException rebuild(
          void Function(OrganizationAccessDeniedExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationAccessDeniedExceptionBuilder toBuilder() =>
      new OrganizationAccessDeniedExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationAccessDeniedException &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OrganizationAccessDeniedExceptionBuilder
    implements
        Builder<OrganizationAccessDeniedException,
            OrganizationAccessDeniedExceptionBuilder> {
  _$OrganizationAccessDeniedException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  OrganizationAccessDeniedExceptionBuilder();

  OrganizationAccessDeniedExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationAccessDeniedException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationAccessDeniedException;
  }

  @override
  void update(
      void Function(OrganizationAccessDeniedExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationAccessDeniedException build() => _build();

  _$OrganizationAccessDeniedException _build() {
    final _$result = _$v ??
        new _$OrganizationAccessDeniedException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
