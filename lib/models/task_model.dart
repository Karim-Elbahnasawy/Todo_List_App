class TaskModel {
  final int id;
  final String description;
  bool isCompleted;

  TaskModel(
      {required this.id, required this.description, this.isCompleted = false});
}
