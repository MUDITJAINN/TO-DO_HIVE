# TO-DO_HIVE
A Flutter application for managing a to-do list using Hive as the local database.
You can create as many as tasks you want and all task/data will be stored 
in your local device storage.

The application includes the following features:
- Displays a list of tasks with checkboxes indicating completion status.
- Allows the user to add new tasks to the list.
- Provides the ability to delete tasks from the list.

Dependencies:
- `flutter/material.dart`: Provides the necessary widgets and functionality for building the user interface.
- `hive_flutter/hive_flutter.dart`: Enables integration with Hive, a lightweight and efficient NoSQL database for Flutter.
- `todo_hive/data/database.dart`: Contains the implementation of the `ToDoDatabase` class, which handles data management using Hive.
- `todo_hive/util/dialog_box.dart`: Defines a dialog box widget for creating new tasks.
- `todo_hive/util/todo_tile.dart`: Defines a custom widget for displaying individual to-do list items.

To get started, initialize the Hive box and load existing data when the homepage is initialized. The to-do list items are stored as a list of lists, where each inner list contains the task name and its completion status.

The `Homepage` widget is a stateful widget that includes the following methods:
- `checkBoxChanged`: Handles the checkbox state changes for tasks and updates the database accordingly.
- `saveNewTask`: Saves a new task to the database and clears the input field.
- `createNewTask`: Displays a dialog box for creating a new task.
- `deleteTask`: Removes a task from the database.
- `build`: Builds the user interface using a Scaffold widget, AppBar, FloatingActionButton, and a ListView.builder for displaying the to-do list items.

Note: Make sure to import the necessary packages and initialize Hive before using this code.
