import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FotoPerfilWieget extends StatelessWidget {
  final String imageUrl;

  const FotoPerfilWieget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,

      imageBuilder: (context, imageProvider) => Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),

      placeholder: (context, url) => Container(
        width: 100.0,
        height: 100.0,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
        // child: const CircularProgressIndicator(),
        child: Icon(Icons.person, size: 80),
      ),

      errorWidget: (context, url, error) => Container(
        width: 150.0,
        height: 150.0,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
        child: const Icon(Icons.person, size: 50, color: Colors.white),
      ),
    );
  }
}