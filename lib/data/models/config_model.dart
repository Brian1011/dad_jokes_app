import 'package:hive/hive.dart';

part '../adapters/config_model.g.dart';

@HiveType(typeId: 2)
class ConfigModel {
  @HiveField(0)
  String? currentPage;
  @HiveField(1)
  String? lastViewedId;
  @HiveField(2)
  String? lastPage;

  ConfigModel({this.currentPage, this.lastViewedId, this.lastPage});
}
