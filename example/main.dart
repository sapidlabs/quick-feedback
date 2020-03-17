import 'package:flutter/material.dart';
import 'package:quick_feedback/quick_feedback.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void _showFeedback(context) {
    showDialog(
      context: context,
      builder: (context) {
        return QuickFeedback(
          onAskLaterCallback: () => print('ask later'),
          title: 'Leave a feedback',
          onSubmitCallback: (feedback) => print('$feedback'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quick Feedback'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: FlatButton(
                onPressed: () => _showFeedback(context),
                child: Text('Feedback'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
