import 'package:flutter/material.dart';
import 'package:the_basics/views/centered_view/centered_view.dart';
import 'package:the_basics/widgets/NavigationBar/navigation_bar.dart';
import 'package:the_basics/widgets/call_to_action/call_to_action.dart';
import 'package:the_basics/widgets/course_details/course_details.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            const NavigationBar(),
            Expanded(
              child: Row(children: const [
                CourseDetails(),
                Expanded(
                  child: Center(
                    child: CallToAction('Join Course'),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
