// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.exceptions.amplify_error}
/// An non-recoverable error occurring within an Amplify category or plugin.
/// {@endtemplate}
abstract class AmplifyError extends Error
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  /// {@macro amplify_core.exceptions.amplify_error}
  AmplifyError(
    this.message, {
    this.recoverySuggestion,
    this.underlyingException,
  });

  /// A description of the error.
  final String message;

  /// Details on how to fix the issue, if available.
  final String? recoverySuggestion;

  /// The exception which caused this, if any.
  final Object? underlyingException;

  @override
  Map<String, Object?> toJson() => {
        'message': message,
        if (recoverySuggestion != null)
          'recoverySuggestion': recoverySuggestion,
        if (underlyingException != null)
          'underlyingException': underlyingException.toString(),
      };
}