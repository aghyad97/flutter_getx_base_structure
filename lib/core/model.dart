abstract class Model {
  Map<String, dynamic> toMap();
  String toJson();
  @override
  String toString();
  @override
  bool operator ==(Object other);
  @override
  int get hashCode;
}
