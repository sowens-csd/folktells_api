/// Uses a single string as an identifier.
class StringId {
  final String _id;
  const StringId(this._id);
  StringId.fromStringId(StringId id) : _id = id.asString();
  StringId.fromTitle({required String prefix, required String title})
      : _id = "${prefix}_${title.replaceAll(' ', '_')}";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is StringId) {
      return _id == other._id;
    }
    return false;
  }

  @override
  int get hashCode => _id.hashCode;

  String asString() => _id;

  @override
  String toString() {
    return "$runtimeType($_id)";
  }
}
