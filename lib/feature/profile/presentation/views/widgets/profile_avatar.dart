import 'dart:io';

import 'package:examy/core/resources/app_palette.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key, this.onTap, this.imageFile});

  final VoidCallback? onTap;

  /// Locally stored photo. When null, a placeholder icon is shown.
  final File? imageFile;

  static const double _size = 90;
  static const double _badgeSize = 30;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            width: _size,
            height: _size,
            decoration: const BoxDecoration(
              color: AppPalette.avatarBackground,
              shape: BoxShape.circle,
            ),
            clipBehavior: Clip.antiAlias,
            child: _buildImage(),
          ),
          if (onTap != null) _buildEditBadge(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    if (imageFile != null) {
      return Image.file(imageFile!, fit: BoxFit.cover);
    }

    return _buildPlaceholderIcon();
  }

  Widget _buildPlaceholderIcon() {
    return const Icon(Icons.person, size: 50, color: AppPalette.white);
  }

  Widget _buildEditBadge() {
    return Positioned(
      right: 0,
      bottom: 0,
      child: Container(
        width: _badgeSize,
        height: _badgeSize,
        decoration: BoxDecoration(
          color: AppPalette.primaryBlue,
          shape: BoxShape.circle,
          border: Border.all(color: AppPalette.white, width: 2),
        ),
        child: const Icon(Icons.camera_alt, size: 16, color: AppPalette.white),
      ),
    );
  }
}
