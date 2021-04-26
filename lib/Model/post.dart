import 'package:meta/meta.dart';

class Post {
  Post({
    @required this.label,
    @required this.path,
  });

  final String label;
  final String path;
}

final List<Post> post=[
  Post(label: 'Fotos',  path: 'assets/camera.svg'),
  Post(label: 'Videos',  path: 'assets/video.svg'),
  Post(label: 'Video Corto',  path: 'assets/view.svg'),
];
