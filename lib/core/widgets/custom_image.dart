import 'package:flutter/material.dart';

/// Custom image widget with loading and error states
class CustomImage extends StatelessWidget {
  final String? imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double borderRadius;
  final Widget? placeholder;
  final Widget? errorWidget;

  const CustomImage({
    super.key,
    this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius = 0,
    this.placeholder,
    this.errorWidget,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null || imageUrl!.isEmpty) {
      return _buildErrorWidget();
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.network(
        imageUrl!,
        width: width,
        height: height,
        fit: fit,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return _buildPlaceholder();
        },
        errorBuilder: (context, error, stackTrace) {
          return _buildErrorWidget();
        },
      ),
    );
  }

  Widget _buildPlaceholder() {
    return placeholder ??
        Container(
          width: width,
          height: height,
          color: Colors.grey.shade200,
          child: Center(child: CircularProgressIndicator()),
        );
  }

  Widget _buildErrorWidget() {
    return errorWidget ??
        Container(
          width: width,
          height: height,
          color: Colors.grey.shade200,
          child: Icon(
            Icons.image_not_supported,
            color: Colors.grey.shade400,
            size: 40,
          ),
        );
  }
}

/// Circular avatar image
class CustomAvatar extends StatelessWidget {
  final String? imageUrl;
  final double radius;
  final String? initials;

  const CustomAvatar({super.key, this.imageUrl, this.radius = 20, this.initials});

  @override
  Widget build(BuildContext context) {
    if (imageUrl != null && imageUrl!.isNotEmpty) {
      return CircleAvatar(
        radius: radius,
        backgroundImage: NetworkImage(imageUrl!),
        onBackgroundImageError: (exception, stackTrace) {},
        child: imageUrl!.isEmpty ? _buildInitials() : null,
      );
    }

    return CircleAvatar(radius: radius, child: _buildInitials());
  }

  Widget _buildInitials() {
    return Text(
      initials ?? '?',
      style: TextStyle(fontSize: radius * 0.8, fontWeight: FontWeight.w600),
    );
  }
}
