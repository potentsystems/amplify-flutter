// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plugin_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoggingConstraint _$LoggingConstraintFromJson(Map<String, dynamic> json) =>
    LoggingConstraint(
      defaultLogLevel:
          $enumDecodeNullable(_$LogLevelEnumMap, json['defaultLogLevel']) ??
              LogLevel.error,
    );

Map<String, dynamic> _$LoggingConstraintToJson(LoggingConstraint instance) =>
    <String, dynamic>{
      'defaultLogLevel': _$LogLevelEnumMap[instance.defaultLogLevel]!,
    };

const _$LogLevelEnumMap = {
  LogLevel.verbose: 'verbose',
  LogLevel.debug: 'debug',
  LogLevel.info: 'info',
  LogLevel.warn: 'warn',
  LogLevel.error: 'error',
  LogLevel.none: 'none',
};
