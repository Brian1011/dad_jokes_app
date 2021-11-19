import 'package:dad_jokes/data/models/config_model.dart';
import 'package:dad_jokes/data/models/dad_joke_model.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class Database {
  Box<ConfigModel>? configBox;
  Box<DadJoke>? dadJokeBox;

  Future init() async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    await _registerAdapters();
    await _initBoxes();
  }

  Future _initBoxes() async {
    configBox = await Hive.openBox('config_box');
    dadJokeBox = await Hive.openBox('dad_joke_box');
  }

  Future _registerAdapters() async {
    try {
      Hive.registerAdapter(ConfigModelAdapter());
      Hive.registerAdapter(DadJokeAdapter());
    } catch (e) {
      print("HIVE ERROR $e");
    }
  }
}

Database db = Database();
