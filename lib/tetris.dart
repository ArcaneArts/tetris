library tetris;

class TetrisJob {
  String name;
  Map<String, dynamic> data;
  DateTime createdAt;
  DateTime? executeAfter;
  DateTime? executeBefore;

  UInt8List write() {}

  factory TetrisJob.create(
      {required String name,
      Map<String, dynamic> data = const {},
      DateTime? executeAfter,
      DateTime? executeBefore}) {
    TetrisJob j = TetrisJob._(
        name: name,
        executeAfter: executeAfter,
        executeBefore: executeBefore,
        data: data,
        createdAt: DateTime.now());

    return j;
  }

  TetrisJob._(
      {required this.name,
      this.data = const {},
      required this.createdAt,
      this.executeAfter,
      this.executeBefore});
}
