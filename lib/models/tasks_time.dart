import 'package:flutter/material.dart';
import 'package:todo_list_app/models/task_model.dart';

class TasksTime {
  final TimeOfDay time;
  final int id;
  final List<TaskModel> _tasks = [];
  get tasks => _tasks;

  TasksTime({
    required this.id,
    required this.time,
    required tasks,
  }) {
    _tasks.addAll(tasks);
  }
  void addListOfTasks(List<TaskModel> tasks) {
    _tasks.addAll(tasks);
  }

  void removeTask(TaskModel task) {
    _tasks.remove(task);
  }

  void updateTask(TaskModel task, index) {
    if (index > -1) {
      _tasks[index] = task;
    }
  }

  void removeAllTasks() {
    _tasks.clear();
  }

  void addTask(TaskModel task) {
    _tasks.add(task);
  }
}
