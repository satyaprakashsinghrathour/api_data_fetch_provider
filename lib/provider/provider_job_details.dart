import 'dart:convert';

import 'package:future_to_provider/modals/main_detail_list.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
// import 'package:future_to_provider/modals/main_list.dart';

//import '../widget/detailscreen.dart';
class PrividerJob2 with ChangeNotifier {
  List<Jobs> _list2 = [];
  List<Jobs> get list2 {
    return [..._list2];
  }

  Future<void> fetchAutogenerated() async {
    print('before HTTP URL');
    final response = await http
        // .get(Uri.parse('https://jsonplaceholder.typicode.com/Autogenerateds/1'));
        // .get(Uri.parse('https://jsonplaceholder.typicode.com/Autogenerateds'));
        .get(Uri.parse(
            'https://remotive.io/api/remote-jobs?category=software-dev/jobs'));
    print('after HTTP URL');
    final extractedDate =
        await json.decode(response.body) as Map<String, dynamic>;

    print('EXTRACTED DATA ${extractedDate['jobs']}');
    // print(json.decode(response.body));
    print('STATUS CODE ${response.statusCode}');
    final List<Jobs> loadedJobss = [];
    extractedDate['jobs'].forEach((prodData) {
      loadedJobss.add(Jobs(
          id: prodData['id'],
          url: prodData['url'],
          title: prodData['title'],
          companyName: prodData['company_name'],
          category: prodData['category'],
          // tags: prodData['tags'],
          jobType: prodData['job_type'],
          publicationDate: prodData['publication_date'],
          candidateRequiredLocation: prodData['candidate_required_location'],
          salary: prodData['salary'],
          description: prodData['description'],
          // companyLogoUrl: prodData['company_logo_url']

          
          ));
    });
    print('AFTER MAPPING JOBS');
    _list2 = loadedJobss;

    print(' LENGTH OF PROVIDER LIST ${_list2.length}');
    notifyListeners();
    // if (response.statusCode == 200) {
    //   return Autogenerated2.fromJson(jsonDecode(response.body));
    // } else {
    //   // If the server did not return a 200 OK response,
    //   // then throw an exception.
    //   throw Exception('Failed to load Autogenerated');
    // }
  }
}