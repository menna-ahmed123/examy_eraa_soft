import 'dart:io';

/// Local profile-photo storage. Everything is per-device and keyed by user id
/// because the backend has no photo support.
abstract interface class ProfilePhotoRepo {
  Future<String?> getPhotoPath(String userId);

  Future<String> savePhoto({required String userId, required File source});
}
