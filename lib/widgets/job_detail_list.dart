import 'dart:ui';

import 'package:flutter/material.dart';

//import '../widget/detailscreen.dart';
class JobListWidget2 extends StatelessWidget {
  // const JobList({ Key? key }) : super(key: key);
  // final String jobname;
  final String title;
  final String company;
  final String job_type;
  int j = 1;
  JobListWidget2(this.company, this.job_type, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      // padding:const EdgeInsets.all(30),
      // height: ,

      child: Center(
        child: Container(
          decoration: BoxDecoration(
              // color: ,
              color: Colors.black54,
              boxShadow: [
                BoxShadow(
                  blurRadius: 16,
                  spreadRadius: 16,
                  color: Colors.black.withOpacity(0.1),
                )
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20.0,
                sigmaY: 20.0,
              ),
              child: Container(
                  width: 360,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white.withOpacity(0.2),
                      )),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(title,
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.75),
                                      fontSize: 25)),
                            ),
                            Text((j++).toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(company,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.75))),
                            Text(job_type,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.75))),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Job-ID 4444',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.75))),
                          ],
                        )
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
    //  Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     width: double.infinity,
    //     height: ,
    //     child: Card(elevation: 2,

    //       child: Row(
    //         children: [
    //           // CircleAvatar(
    //           //   child: Text(index,
    //           //       style: TextStyle(
    //           //           // decoration: TextDecoration.underline,
    //           //           // decorationStyle: TextDecorationStyle.solid,
    //           //           fontSize: 20)),
    //           // ),

    //           Flexible(
    //             child: Text(jobname,
    //                 style: TextStyle(
    //                     // decoration: TextDecoration.underline,
    //                     // decorationStyle: TextDecorationStyle.solid,
    //                     fontSize: 20)),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
