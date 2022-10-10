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

import 'dart:ffi';

import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/unknown_exception.dart';
import 'package:amplify_secure_storage_dart/src/ffi/cupertino/core_foundation.bindings.g.dart';
import 'package:amplify_secure_storage_dart/src/ffi/cupertino/security.bindings.g.dart';
import 'package:amplify_secure_storage_dart/src/types/keychain_attribute_accessible.dart';
import 'package:ffi/ffi.dart';

export 'core_foundation.bindings.g.dart' hide CoreFoundation;
export 'security.bindings.g.dart' hide Security;

final DynamicLibrary _dynamicLibrary = DynamicLibrary.executable();

final Security security = Security(_dynamicLibrary);
final CoreFoundation coreFoundation = CoreFoundation(_dynamicLibrary);

extension CFDataRefX on Pointer<CFData> {
  /// Converts a [CFDataRef] to a Dart String.
  String? toDartString() {
    if (this == nullptr) return null;
    final bytePtr = coreFoundation.CFDataGetBytePtr(this);
    if (bytePtr == nullptr) return null;
    return bytePtr.cast<Utf8>().toDartString();
  }
}

extension CFStringPointerX on Pointer<CFString> {
  /// Converts a [CFStringRef] to a Dart String.
  String? toDartString() {
    if (this == nullptr) return null;
    final cStringPtr = coreFoundation.CFStringGetCStringPtr(
      this,
      kCFStringEncodingUTF8,
    );
    if (cStringPtr == nullptr) return null;
    return cStringPtr.cast<Utf8>().toDartString();
  }
}

extension KeychainAttributeAccessibleX on KeychainAttributeAccessible {
  /// Converts [KeychainAttributeAccessible] to the associated pointer constant.
  CFStringRef toCFStringRef() {
    switch (this) {
      case KeychainAttributeAccessible.accessibleAfterFirstUnlock:
        return security.kSecAttrAccessibleWhenUnlocked;
      case KeychainAttributeAccessible.accessibleAfterFirstUnlockThisDeviceOnly:
        return security.kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
      case KeychainAttributeAccessible.accessibleWhenPasscodeSetThisDeviceOnly:
        return security.kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly;
      case KeychainAttributeAccessible.accessibleWhenUnlocked:
        return security.kSecAttrAccessibleWhenUnlocked;
      case KeychainAttributeAccessible.accessibleWhenUnlockedThisDeviceOnly:
        return security.kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
      default:
        throw const UnknownException(
          'Could not convert KeychainAttributeAccessible to a native type.',
          recoverySuggestion: SecureStorageException.missingRecovery,
        );
    }
  }
}