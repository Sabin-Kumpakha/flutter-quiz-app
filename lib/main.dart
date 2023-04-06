import 'package:flutter/material.dart';
import 'package:quizapp/question.dart';
import 'package:quizapp/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.indigo[900])),
      home: const Splash(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int score = 0;
  int currentQuestion = 0;

  // function //checks the answer is right or wrong
  void checkAnswer(int userChoose) {
    setState(
      () {
        //stops if the current question is the last question
        if (allQuestions[currentQuestion].ans == userChoose) {
          score++;
        }
        if (currentQuestion == allQuestions.length - 1) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text("Result"),
              content:
                  Text("Your Score is $score out of ${allQuestions.length}"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      reset();
                    },
                    child: const Text("Play Again")),
              ],
            ),
          );
          return;
        }
        // Moves to the next question
        currentQuestion++;
      },
    );
  }

  //for reset
  void reset() {
    setState(() {
      score = 0;
      currentQuestion = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // foregroundColor: Colors.white,
          title: const Center(
            child: Text("Flutter Quiz App"),
          ),
        ),
        drawer: const Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            reset();
          },
          backgroundColor: Colors.indigo[900],
          foregroundColor: Colors.white,
          child: const Icon(Icons.undo_rounded),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
                width: double.infinity,
                //For Question box
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.black, width: 5),
                  ),
                  elevation: 40,
                  color: Colors.white,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Q. ${allQuestions[currentQuestion].question}",
                        style:
                            const TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              //option 1
              GestureDetector(
                onTap: () {
                  checkAnswer(1);
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "1. ${allQuestions[currentQuestion].opt1}",
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              //option 2
              GestureDetector(
                onTap: () {
                  checkAnswer(2);
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "2. ${allQuestions[currentQuestion].opt2}",
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              //option 3
              GestureDetector(
                onTap: () {
                  checkAnswer(3);
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "3. ${allQuestions[currentQuestion].opt3}",
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              //option 4
              GestureDetector(
                onTap: () {
                  checkAnswer(4);
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "4. ${allQuestions[currentQuestion].opt4}",
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              //For Total score
              SizedBox(
                height: 50,
                width: 250,
                child: Card(
                  elevation: 5,
                  child: Center(
                    child: Text(
                      "Total Score: $score out of ${allQuestions.length}. ",
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              //For Current Question
              SizedBox(
                height: 50,
                width: 250,
                child: Card(
                  elevation: 5,
                  child: Center(
                    child: Text(
                      "Current Question: ${currentQuestion + 1}/${allQuestions.length.toString()}.",
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
