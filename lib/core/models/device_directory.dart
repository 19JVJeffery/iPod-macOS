import 'dart:io';

class DeviceDirectory {
  final Directory documentsDirectory;

  DeviceDirectory({required this.documentsDirectory});

  String get musicFolderPath {
    final homeDirectory = Platform.environment['HOME'];
    if (homeDirectory == null || homeDirectory.isEmpty) {
      return documentsDirectory.path;
    }
    return '$homeDirectory/Music';
  }

  @override
  bool operator ==(Object other) {
    return other is DeviceDirectory &&
        other.documentsDirectory.path == documentsDirectory.path;
  }

  @override
  int get hashCode => documentsDirectory.path.hashCode;

  @override
  String toString() {
    return 'DeviceDirectory(documentsDirectory: ${documentsDirectory.path})';
  }
}
