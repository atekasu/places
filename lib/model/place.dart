import 'package:uuid/uuid.dart';

const Uuid _uuid = Uuid();

class Place {
  Place({
    required this.title,
    String? id,
  }) : id = _uuid.v4();
  final String id;
  final String title;
}
