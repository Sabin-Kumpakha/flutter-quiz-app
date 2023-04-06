class Question {
  String question;
  String opt1;
  String opt2;
  String opt3;
  String opt4;
  int ans;

  //Constructor
  Question(
      {required this.question,
      required this.opt1,
      required this.opt2,
      required this.opt3,
      required this.opt4,
      required this.ans});
}

List<Question> allQuestions = [
  Question(
      question: "What is Flutter?",
      opt1: "A music streaming service",
      opt2: "A food delivery app",
      opt3: "A mobile application development framework",
      opt4: "A social media platform",
      ans: 3),
  Question(
      question: "What is the primary programming language used in Flutter?",
      opt1: "Java",
      opt2: "Swift",
      opt3: "Kotlin",
      opt4: "Dart",
      ans: 4),
  Question(
      question: "What is a widget in Flutter?",
      opt1: "A container for storing data",
      opt2: "A graphical user interface element",
      opt3: "A server-side scripting language",
      opt4: "A database management system",
      ans: 2),
  Question(
      question: "What is the purpose of setState() method in Flutter?",
      opt1: "To change the state of the widget",
      opt2: "To access the database",
      opt3: "To create a new widget",
      opt4: "To navigate to a new screen",
      ans: 1),
  Question(
      question:
          "What is the difference between StatelessWidget and StatefulWidget in Flutter?",
      opt1:
          "StatelessWidget cannot be updated, while StatefulWidget can be updated",
      opt2:
          "StatelessWidget can be updated, while StatefulWidget cannot be updated",
      opt3: "StatelessWidget and StatefulWidget are the same thing",
      opt4: "None of the above",
      ans: 1),
  Question(
      question: "What is the purpose of the pubspec.yaml file in Flutter?",
      opt1: "To specify the dependencies of the project",
      opt2: "To store the source code of the project",
      opt3: "To define the user interface of the project",
      opt4: "To manage the state of the project",
      ans: 1),
  Question(
      question: "What is the purpose of the MaterialApp widget in Flutter?",
      opt1: "To define the layout of the application",
      opt2: "To handle navigation between screens",
      opt3: "To define the theme of the application",
      opt4: "To store data for the application",
      ans: 3),
  Question(
      question: "What is the purpose of the Scaffold widget in Flutter?",
      opt1: "To define the layout of the application",
      opt2: "To handle navigation between screens",
      opt3: "To define the theme of the application",
      opt4: "To provide a basic layout structure for the application",
      ans: 4),
  Question(
      question: "What is the purpose of the Navigator widget in Flutter?",
      opt1: "To define the layout of the application",
      opt2: "To handle navigation between screens",
      opt3: "To define the theme of the application",
      opt4: "To provide a basic layout structure for the application",
      ans: 2),
  Question(
      question: "What is the purpose of the FutureBuilder widget in Flutter?",
      opt1: "To display a list of items",
      opt2: "To create a user interface element",
      opt3: "To handle asynchronous data",
      opt4: "To define the theme of the application",
      ans: 3),
];
