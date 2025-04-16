class Task {
  final String title;
  bool isCompleted;

  Task(
    this.title, {
      this.isCompleted = false,
    }
  );

  @override
  String toString() {
    return '$title [${isCompleted ? "YES" : "NO"}]';
  }
}

class TaskManager {
  final List<Task> _tasks = [];

  void addTask({
    required String title,
  }) {
    _tasks.add(
      Task(title),
    );
  }

  void removeTask({
    required int index,
  }) {
    if (index >= 0 && index < _tasks.length) {
      _tasks.removeAt(index);
    }
  }

  void toggleTask({
    required int index,
  }) {
    if (index >= 0 && index < _tasks.length) {
      _tasks[index].isCompleted = !_tasks[index].isCompleted;
    }
  }

  List<Task> get tasks {
    return List.unmodifiable(_tasks);
  }
}

class FileStorage {
  String save({
    required List<Task> tasks,
  }) {
    String result = '';
    for (var i = 0; i < tasks.length; i++) {
      final task = tasks[i];
      result += '${task.title}; ${task.isCompleted}';
      if (i != tasks.length - 1) {
        result += '\n';
      }
    }

    return result;
  }

  List<Task> load({
    required String data,
  }) {
    return data.split('\n').map((line) {
      final parts = line.split(';');
      final task = Task(parts[0], isCompleted: parts[1] == 'true');

      return task;
    }).toList();
  }
}
