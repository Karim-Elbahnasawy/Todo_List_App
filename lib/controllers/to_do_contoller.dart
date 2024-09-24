import 'package:todo_list_app/models/task_model.dart';
import 'package:todo_list_app/models/tasks_time.dart';

class ToDoController {
  static final List<TasksTime> _taskTimes = [];

  static get tasksTimes => _taskTimes;

  static void addTaskTime(TasksTime taskTime) {
    _taskTimes.add(taskTime);
  }

  static void assignTaskToTime(int tasksTimeId, TaskModel task) {
    _taskTimes[tasksTimeId].addTask(task);
  }

  static void updateTask(int tasksTimeId, TaskModel task) {
    _taskTimes[tasksTimeId].removeTask(task);
  }

  static void updateTasksTime(TasksTime tasksTime, int index) {
    if (index > -1) {
      _taskTimes[index] = tasksTime;
    }
  }

  static void removeTasksTime(
    TasksTime tasksTime,
  ) {
    tasksTime.removeAllTasks();
    _taskTimes.removeWhere((t) => t.id == tasksTime.id);
  }

  static void onCompleted(TaskModel task) {
    task.isCompleted = !task.isCompleted;
  }
}
