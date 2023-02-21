// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

class PushNotificationPermissions {
  final bool alert;
  final bool badge;
  final bool sound;

  PushNotificationPermissions({
    this.alert = true,
    this.badge = true,
    this.sound = true,
  });
}