import 'dart:io';

/// Local persistence for the per-device profile photo.
///
/// The backend has no photo support, so the picked photo is copied into the
/// app documents directory and only the copied path is stored.
abstract interface class ProfilePhotoLocalDataSource {
  /// Returns the stored copied photo path for [userId], or null when there
  /// is none (or the file no longer exists).
  Future<String?> getPhotoPath(String userId);

  /// Copies [source] into the app documents directory (overwriting any
  /// previous photo for [userId]), stores the copied path and returns it.
  Future<String> savePhoto({required String userId, required File source});
}
