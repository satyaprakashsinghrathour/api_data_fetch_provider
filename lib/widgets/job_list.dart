import 'package:flutter/material.dart';
import 'package:future_to_provider/screens/job_list_detail_screen.dart';
import 'package:future_to_provider/screens/job_list_screen.dart';

//import '../widget/detailscreen.dart';
class JobListWidget extends StatelessWidget {
  // const JobList({ Key? key }) : super(key: key);
  final String jobname;
  final String index;
  JobListWidget(this.index, this.jobname);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // print('inkwell is pressed');
          Navigator.of(context)
              .pushNamed(JobScreen2.routeName, arguments: jobname);
        },
        child: Card(
          // color: Colors.grey,
          elevation: 2,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  child: Text(index,
                      style: TextStyle(
                          // decoration: TextDecoration.underline,
                          // decorationStyle: TextDecorationStyle.solid,
                          fontSize: 20)),
                ),
              ),
              Flexible(
                child: Text(jobname,
                    style: TextStyle(
                        // decoration: TextDecoration.underline,
                        // decorationStyle: TextDecorationStyle.solid,
                        fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
