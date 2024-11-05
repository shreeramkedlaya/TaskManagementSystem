# Task Management System

A **Task Management System** built using Flutter, designed to manage tasks under various categories like Personal, Work, and Health. This app includes a homepage displaying tasks and premium features, a profile page with user information, and helper functions to enhance usability. Firebase is used for backend integration.

## Features

- **Task Model**: Organize tasks under Personal, Work, and Health categories.
- **Home Page**: Shows premium features and tasks screen.
- **Profile Page**: Displays basic user information.
- **Floating Action Button**: Allows users to quickly add new tasks.
- **Helper Functions**: Includes customized widgets like `AppBar`, `customOption`, and `upperHeader` for a cohesive user experience.

---

## Table of Contents

- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Models](#models)
- [Screens](#screens)
- [Helper Functions](#helper-functions)
- [Firebase Integration](#firebase-integration)
- [Setup](#setup)

---

## Getting Started

To get started, clone the repository and ensure you have Flutter and Firebase configured.

```bash
git clone https://github.com/your-repo/task-management-system.git
```

cd task-management-system

## Project Structure

```
lib/
├── main.dart              # Entry point of the app
├── firebase_options.dart  # Firebase integration
├── models/
│   └── task_model.dart    # Data model for tasks
├── screens/
│   ├── home_page.dart     # Home screen with premium and tasks
│   ├── profile_page.dart  # Profile screen for user info
|   ├── contact_page.dart # Contact Us
|   ├── manu_page.dart # the menu page for various other pages
|   ├── privacy_security.dart # the privacy and security options
|   └── settings.dart # settings related to app
├── components/
│   ├── app_bar.dart       # Custom AppBar widget
│   ├── custom_option.dart # Custom option button/widget
│   ├── upper_header.dart  # Upper header widget
|   └── time_line.dart # Custom timeline widget
└── widgets/
|   ├── constant.dart # the constants used in the project
|   ├── date_picker.dart # picks the date asked by user
|   ├── detail.dart # view the details of the task for that category
|   ├── tasks.dart # displays the information of each of the tasks in that category
```

## Models

### Task Model

The TaskModel class represents a task. Each task can belong to one of three categories:

- Personal
- Work
- Health

Here's a sample structure for the TaskModel:

```dart
class Task {
  IconData? icon;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;
  num? left;
  List<Map<String, dynamic>>? desc;
  num? done;
  bool isLast;

  Task({
    this.icon,
    this.title,
    this.bgcolor,
    this.iconcolor,
    this.btncolor,
    this.left,
    this.done,
    this.desc,
    this.isLast = false,
  });
}
```

## Screens

### Home Page

- Purpose: Displays the user's tasks, organized by category, and premium features.

- Components:
  - AppBar with title and options
  - List of tasks
  - FloatingActionButton for adding new tasks

### Profile Page

- Purpose: Shows the user's profile information like name, email, and subscription status.

- Components:
  - User photo
  - Name, email, and other details
  - Edit button for updating profile information

## Helper Functions

### AppBar

A custom AppBar widget used throughout the app for consistency.

```dart

Widget buildAppBar(String title) {
    return AppBar(
        title: Text(title),
        centerTitle: true,
    );
}
```

### customOption

A customizable option button widget.

```dart
Widget customOption(String text, IconData icon, onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.black87, size: 30),
          const SizedBox(width: 15),
          Text(
            text,
            style: const TextStyle(color: Colors.black87, fontSize: 20),
          ),
          Expanded(child: Container()),
          const Icon(Icons.arrow_forward_ios, color: Colors.black87, size: 20),
        ],
      ),
    ),
  );
}
```

### upperHeader

A widget that displays a section header.

```dart
Widget upperHeader(String text, BuildContext context, bool isIcon,
    {required Widget page}) {
  var he = MediaQuery.of(context).size.height;
  return Padding(
    padding: EdgeInsets.only(top: he * 0.03),
    child: Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page));
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 30,
          ),
        ),
        SizedBox(width: he * 0.03),
        customText(text, 28),
        Expanded(child: Container()),
        isIcon
            ? const Icon(Icons.search, color: Colors.black, size: 30)
            : Container()
      ],
    ),
  );
}
```

## Firebase Integration

To enable Firebase, ensure that the Firebase project is created, and Firebase is configured in your Flutter app. Follow Firebase Flutter documentation for integration.

## Floating Action Button

The FloatingActionButton on the home page allows users to add new tasks:

```dart
FloatingActionButton(
  onPressed: () => addNewItem,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    ),
    backgroundColor: kdark,
    child: Icon(Icons.add, color: klightgrey, size: 35),
),
```

## Setup

1. Clone the repository.

```bash
git clone https://github.com/shreeramkedlaya/TaskManagementSystem.git

cd task-management-system
```

2. Run `flutter pub get` to install dependencies.

3. Configure Firebase for Android and iOS as per [Firebase documentation](https://firebase.google.com/docs/flutter).

4. Run the app on a simulator or device:

```dart
flutter run
```
