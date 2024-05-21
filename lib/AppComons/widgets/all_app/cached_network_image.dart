import 'package:fit_body/Utils/constants/exports.dart';
import 'package:shimmer/shimmer.dart';

class MCachedNetworkImage extends StatelessWidget {
  const MCachedNetworkImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      // placeholder: (context, url) =>
      //     const Center(child: CircularProgressIndicator()),
      placeholder: (context, url) => SizedBox(
        width: 200.0,
        height: 200.0,
        child: Shimmer.fromColors(
            baseColor: Colors.grey[850]!,
            highlightColor: Colors.grey[350]!,
            child: Container(
              width: 200.0,
              height: 200.0,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
            )),
      ),

      fit: BoxFit.fitWidth,
      errorWidget: (context, url, error) =>
          const Text('Error Loading', style: TextStyle(color: Colors.white)),
    );
  }
}
