import 'package:folktells_api/folktells_api.dart';

class OnlineUserId extends StringId {
  static final none = OnlineUserId('__none__');

  OnlineUserId(String id) : super(id);
}
